const detailTilesHover = (event) => {
  const el = event.target;
  // Get selection before changing
  const cbBefore = el.parentNode.querySelector('input:checked');

  // Change selection
  const cbPreviewId = el.getAttribute('for');
  const cbPreview = document.getElementById(cbPreviewId);
  cbPreview.checked = true;

  // restore selection on mouse out, if not clicked in the mean time
  const onMouseOut = () => {
    cbPreview.checked = false;
    if (cbBefore) {
      cbBefore.checked = true;
    }
    removeListeners();
  };
  const removeListeners = () => {
    el.removeEventListener('mouseleave', onMouseOut);
    el.removeEventListener('click', removeListeners);
  };
  el.addEventListener('mouseleave', onMouseOut);
  el.addEventListener('click', removeListeners)
};

document.addEventListener('DOMContentLoaded', (event) => {
  for (const el of document.getElementsByClassName('detail-tiles-preview')) {
    el.addEventListener('mouseenter', detailTilesHover)
  }
});
