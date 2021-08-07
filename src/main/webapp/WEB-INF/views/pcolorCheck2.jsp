<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<video id="video" width="320" height="240" autoplay></video>
   <canvas id="canvas" width="960" height="720"></canvas>
   <button type="button" id="webcamBtn">캡쳐하기</button>

   <script>
      if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
         navigator.mediaDevices.getUserMedia({
            video : true
         }).then(function(stream) {
            var video = document.getElementById('video');
            video.srcObject = stream;
            video.play();
         });
      }

      var canvas = document.getElementById('canvas');
      var context = canvas.getContext('2d');
      var video = document.getElementById('video');
      document.getElementById("webcamBtn").addEventListener("click",
            function() {
               context.drawImage(video, 0, 0, 960, 720);
            });
   </script>

</body>
</html>