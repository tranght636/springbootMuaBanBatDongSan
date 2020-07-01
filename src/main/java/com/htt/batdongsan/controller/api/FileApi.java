package com.htt.batdongsan.controller.api;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.htt.batdongsan.model.FileModel;
import com.htt.batdongsan.service.FileService;

@RestController
@RequestMapping("/api")
public class FileApi {
	
	@Autowired
	FileService fileService;
	
	@PostMapping("/file")
	public ResponseEntity<?> uploadFile(MultipartFile[] multipartFiles) {
		List<String> urlDownloadFiles = null;
		try {
			urlDownloadFiles = Arrays.asList(multipartFiles)
					.stream()
					.map(multipartFile -> getDownloadUrl(multipartFile))
					.collect(Collectors.toList());
			return ResponseEntity.ok(urlDownloadFiles);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ResponseEntity.ok("file not found");
	}
	
	private String getDownloadUrl(MultipartFile multipartFile) {
		try {
			String name = multipartFile.getOriginalFilename();
			String type = multipartFile.getContentType();
			byte[] data = multipartFile.getBytes();
			FileModel fileModel = new FileModel(name, type, data);
			
			Integer id = fileService.insert(fileModel);
			if(id == null) {
				return "";
			}
					
			String fileDownloadUrl = ServletUriComponentsBuilder
					.fromCurrentContextPath()
					.path("/api/file/")
					.path(id.toString()).toUriString();
			return fileDownloadUrl;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	@GetMapping("/file/{id}")
	public ResponseEntity<?> downloadFile(
			@PathVariable(name = "id") Integer id, 
			HttpServletRequest request) {
		try {
			FileModel fileModel = fileService.selectOne(id);

			return ResponseEntity.ok()
					.contentType(MediaType.parseMediaType(fileModel.getType()))
					.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + fileModel.getName() + "\"")
					.body(new ByteArrayResource(fileModel.getData()));
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ResponseEntity.ok("file not found");
	}
}
