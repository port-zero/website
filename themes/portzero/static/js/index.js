document.addEventListener('DOMContentLoaded', function (event) {
  document.getElementById('language').addEventListener('change', function onChangeLanguage(event) {
    if (window.location.href !== event.target.value) {
      window.location = event.target.value
    }
  })
})
