package kr.pcolor.idol;

import java.io.File;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.pcolor.domain.AttachFileVO;
import kr.pcolor.domain.resultVO;

@Controller
public class UploadController {

	@GetMapping("/uploadForm.do")
	public void uploadForm() {

	}

	@RequestMapping("/uploadFormAction.do")
	// MultipartFile[] : 파일에 대한 정보를 받기 위한 것(파일에 대한 데이터는 여러가지 이므로 [](배열)형태로 받는다)
	public String uploadFormAction(MultipartFile[] uploadFile, Model model, String user_id,HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userid = user_id;
		System.out.println("Web에서 받은 ID:" + userid);

		// 업로드 파일에 대한 정보를 담을 VO객체 생성
		List<AttachFileVO> list = new ArrayList<AttachFileVO>();

		String uploadFolder = "C:\\Users\\21SMT74\\00_3차프로젝트_idol\\upload";

		// 실제로 디렉토리(폴더)를 만들기 위해서.
		File uploadPath = new File(uploadFolder);

		// 만약 해당이름(해당날짜)로 폴더가 생성되어 있지 않다면
		if (uploadPath.exists() == false) {
			// uploadPath로 지정된 경로에 폴더(디렉토리)를 생성
			uploadPath.mkdirs();
		}

		// 파일 1개씩 데이터를 사용하기 위해 for문을 사용
		for (MultipartFile multipartFile : uploadFile) {

			AttachFileVO vo = new AttachFileVO();

			// 파일이름을 String형 변수에 저장
			String uploadFileName = multipartFile.getOriginalFilename();
			// 파일이름 vo에 저장
			vo.setFileName(uploadFileName);

			// 실제로 파일을 만들기 위해서 File타입으로 만들기
			// File( '업로드 경로', '업로드파일이름(여기서는 '랜덤수+원래이름'으로 설정되어 있음)' ) :
			File saveFile = new File(uploadPath, uploadFileName);
			try {
				// 기존에 있는 파일을 복사.
				multipartFile.transferTo(saveFile);

				// list에 vo 데이터 입력
				list.add(vo);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		System.out.println(list.get(0).getFileName());
		System.out.println(list.get(0).getUploadPath());
		System.out.println(list.get(0).getUuid());

		String filename = list.get(0).getFileName();

		String ipAddress=request.getRemoteAddr();
		System.out.println("클라이언트 IP 주소: "+ipAddress);
		
		String flaskUrl = "http://"+ipAddress+":5000?imgurl=" + filename + "&user_id=" + userid;
		System.out.println(flaskUrl);

		return "redirect:" + flaskUrl;
	}

	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", "/");
	}

	@GetMapping(value = "/download.do", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	// @ResponseBody // download.jsp(X)
	public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent") String userAgent, String fileName) {
		System.out.println(fileName);

		Resource resource = new FileSystemResource("C:\\upload\\" + fileName); //
		String resourceName = resource.getFilename();
		System.out.println(resourceName);

		String resourceOriginalName = resourceName.substring(resourceName.indexOf("_") + 1);
		// 다운로드 작업
		HttpHeaders headers = new HttpHeaders();
		try {
			String downloadName = null;
			if (userAgent.contains("Trident")) {
				System.out.println("IE");
				downloadName = URLEncoder.encode(resourceOriginalName, "UTF-8").replaceAll("\\+", " ");
			} else if (userAgent.contains("Edge")) {
				System.out.println("Edge");
				downloadName = URLEncoder.encode(resourceOriginalName, "UTF-8");
			} else {
				System.out.println("Chrome");
				downloadName = new String(resourceOriginalName.getBytes("UTF-8"), "ISO-8859-1");
			}
			headers.add("Content-Disposition", "attachment;filename=" + resourceOriginalName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
	}
	
	@RequestMapping("/uploadFormActionPersonal.do")
	// MultipartFile[] : 파일에 대한 정보를 받기 위한 것(파일에 대한 데이터는 여러가지 이므로 [](배열)형태로 받는다)
	public String uploadFormActionPersonal(MultipartFile[] uploadFile, Model model, String user_id,HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userid = user_id;
		System.out.println("Web에서 받은 ID:" + userid);

		// 업로드 파일에 대한 정보를 담을 VO객체 생성
		List<AttachFileVO> list = new ArrayList<AttachFileVO>();

		String uploadFolder = "C:\\Users\\21SMT74\\00_3차프로젝트_idol\\upload";

		// 실제로 디렉토리(폴더)를 만들기 위해서.
		File uploadPath = new File(uploadFolder);

		// 만약 해당이름(해당날짜)로 폴더가 생성되어 있지 않다면
		if (uploadPath.exists() == false) {
			// uploadPath로 지정된 경로에 폴더(디렉토리)를 생성
			uploadPath.mkdirs();
		}

		// 파일 1개씩 데이터를 사용하기 위해 for문을 사용
		for (MultipartFile multipartFile : uploadFile) {

			AttachFileVO vo = new AttachFileVO();

			// 파일이름을 String형 변수에 저장
			String uploadFileName = multipartFile.getOriginalFilename();
			// 파일이름 vo에 저장
			vo.setFileName(uploadFileName);

			// 실제로 파일을 만들기 위해서 File타입으로 만들기
			// File( '업로드 경로', '업로드파일이름(여기서는 '랜덤수+원래이름'으로 설정되어 있음)' ) :
			File saveFile = new File(uploadPath, uploadFileName);
			try {
				// 기존에 있는 파일을 복사.
				multipartFile.transferTo(saveFile);

				// list에 vo 데이터 입력
				list.add(vo);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		System.out.println(list.get(0).getFileName());
		System.out.println(list.get(0).getUploadPath());
		System.out.println(list.get(0).getUuid());

		String filename = list.get(0).getFileName();

		String ipAddress=request.getRemoteAddr();
		System.out.println("클라이언트 IP 주소: "+ipAddress);
		
		String flaskUrl = "http://"+ipAddress+":5000/personal?imgurl=" + filename + "&user_id=" + userid;
		System.out.println(flaskUrl);

		return "redirect:" + flaskUrl;
	}
	
	@RequestMapping("/uploadFormActionCloths.do")
	// MultipartFile[] : 파일에 대한 정보를 받기 위한 것(파일에 대한 데이터는 여러가지 이므로 [](배열)형태로 받는다)
	public String uploadFormActionCloths(MultipartFile[] uploadFile, Model model, String user_id,HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userid = user_id;
		System.out.println("Web에서 받은 ID:" + userid);

		// 업로드 파일에 대한 정보를 담을 VO객체 생성
		List<AttachFileVO> list = new ArrayList<AttachFileVO>();

		String uploadFolder = "C:\\Users\\21SMT74\\00_3차프로젝트_idol\\upload";

		// 실제로 디렉토리(폴더)를 만들기 위해서.
		File uploadPath = new File(uploadFolder);

		// 만약 해당이름(해당날짜)로 폴더가 생성되어 있지 않다면
		if (uploadPath.exists() == false) {
			// uploadPath로 지정된 경로에 폴더(디렉토리)를 생성
			uploadPath.mkdirs();
		}

		// 파일 1개씩 데이터를 사용하기 위해 for문을 사용
		for (MultipartFile multipartFile : uploadFile) {

			AttachFileVO vo = new AttachFileVO();

			// 파일이름을 String형 변수에 저장
			String uploadFileName = multipartFile.getOriginalFilename();
			// 파일이름 vo에 저장
			vo.setFileName(uploadFileName);

			// 실제로 파일을 만들기 위해서 File타입으로 만들기
			// File( '업로드 경로', '업로드파일이름(여기서는 '랜덤수+원래이름'으로 설정되어 있음)' ) :
			File saveFile = new File(uploadPath, uploadFileName);
			try {
				// 기존에 있는 파일을 복사.
				multipartFile.transferTo(saveFile);

				// list에 vo 데이터 입력
				list.add(vo);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		System.out.println(list.get(0).getFileName());
		System.out.println(list.get(0).getUploadPath());
		System.out.println(list.get(0).getUuid());

		String filename = list.get(0).getFileName();

		String ipAddress=request.getRemoteAddr();
		System.out.println("클라이언트 IP 주소: "+ipAddress);
		
		String flaskUrl = "http://"+ipAddress+":5000/cloths?imgurl=" + filename + "&user_id=" + userid;
		System.out.println(flaskUrl);

		return "redirect:" + flaskUrl;
	}

}