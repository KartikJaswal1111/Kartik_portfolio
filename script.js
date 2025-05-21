
function toggleSection(sectionId) {
  const sections = document.querySelectorAll('.content-section');
  sections.forEach(section => {
    section.style.display = (section.id === sectionId) ? 'block' : 'none';
  });
}
