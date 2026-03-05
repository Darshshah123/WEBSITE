<!DOCTYPE html>
<html>
<head><title>Welcome to Clocksyy.co</title>
<style>body{font-family:Arial;text-align:c
enter;padding:50px;background:#e0f7fa;
}
#clock{font-size:48px;color:#00695c;padding:20px;border-
radius:10px;background:white;}</style>
</head>
<body>
<h1>Clocksyy.co</h1>
<div id="clock">00:00:00</div>
<script>
function updateClock() {
  var now = new Date();
  var time = now.toLocale Timestring();
  document.getElementByld("clock").innerHTML = time;

}

setInterval(updateClock,1000);
updateClock();
</script>
</body>
</html>