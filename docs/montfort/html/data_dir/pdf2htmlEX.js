document.addEventListener('DOMContentLoaded', function() {
    const hijo = document.getElementById('pf1');
    const width = hijo.offsetWidth;
    const height = hijo.offsetHeight;
    const windowWidth = document.documentElement.clientWidth;
    const windowHeight = document.documentElement.clientHeight;
    const r = Math.min(windowWidth / width, windowHeight / height);

    hijo.style.transform = `scale(${r})`;
});
