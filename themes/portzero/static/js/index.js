const detailTilesHover = (event) => {
  const el = event.target;
  // Get selection before changing
  const cbBefore = el.parentNode.querySelector('input:checked');

  // Change selection
  const cbPreviewId = el.getAttribute('for');
  const cbPreview = document.getElementById(cbPreviewId);
  let changed = cbPreview.checked;
  cbPreview.checked = true;

  // restore selection on mouse out, if not clicked in the mean time
  const onMouseLeave = () => {
    if (!changed) {
      cbPreview.checked = false;
      if (cbBefore) {
        cbBefore.checked = true;
      }
    }
    el.removeEventListener('mouseleave', onMouseLeave);
    el.removeEventListener('click', handleClick);
  };
  const handleClick = (e) => {
    e.preventDefault();
    if (changed) {
      cbPreview.checked = !cbPreview.checked;
    } else {
      changed = true;
    }
  };
  el.addEventListener('mouseleave', onMouseLeave);
  el.addEventListener('click', handleClick)
};


const content = document.getElementById('content');
const links = document.getElementsByClassName('content-section-link');
const contentSections = Array.from(content.children).reverse();
const updateMenuHighlight = () => {
  const offset = content.getBoundingClientRect().top;
  const current = contentSections.find(child => child.getBoundingClientRect().top <= offset);
  window.history.replaceState(null, window.title, `#${current.id}`);
  for (const link of links) {
      link.classList.toggle('active', link.id === `link-${current.id}`);
  }
};


const smoothScroll = (link) => (event) => {
  if (event.preventDefault) {
    event.preventDefault();
  } else {
    event.returnValue = false;
  }
  const id = link.hash.substring(1);
  document.getElementById(id).scrollIntoView({ behavior: 'smooth' });
  return false;
};


document.addEventListener('DOMContentLoaded', (event) => {
  for (const el of document.getElementsByClassName('detail-tiles-preview')) {
    el.addEventListener('mouseenter', detailTilesHover)
  }

  window.addEventListener('resize', updateMenuHighlight);
  content.addEventListener('scroll', updateMenuHighlight);

  for (const link of document.getElementsByTagName('a')) {
    if (link.origin === window.location.origin && link.pathname === window.location.pathname) {
      link.addEventListener('click', smoothScroll(link));
    }
  }
});
