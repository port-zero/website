function onSelectChange (event) {
    if (window.location.href !== event.target.value) {
	window.location.href = event.target.value
    }
}

document.addEventListener('DOMContentLoaded', function (event) {
    document.getElementById('language').addEventListener('change', onSelectChange)
    document.getElementById('mobile-menu').addEventListener('change', onSelectChange)
})
