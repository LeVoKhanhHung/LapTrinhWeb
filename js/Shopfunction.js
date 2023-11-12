const pageLinks = document.querySelectorAll('.pagination .page-link');
const previousLink = document.querySelector('.pagination .page-link[aria-label="Previous"]');
const nextLink = document.querySelector('.pagination .page-link[aria-label="Next"]');
let currentPage = 1;

// Xử lý sự kiện khi click vào các liên kết số trang
pageLinks.forEach((link) => {
    link.addEventListener('click', (event) => {
        event.preventDefault();
        const pageNumber = parseInt(link.textContent);
        if (pageNumber) {
            currentPage = pageNumber;
            // Gọi hàm để thực hiện thay đổi trang hiển thị
            renderPage(currentPage);
        }
    });
});

// Xử lý sự kiện khi click vào liên kết "Previous"
previousLink.addEventListener('click', (event) => {
    event.preventDefault();
    if (currentPage > 1) {
        currentPage--;
        // Gọi hàm để thực hiện thay đổi trang hiển thị
        renderPage(currentPage);
    }
});

// Xử lý sự kiện khi click vào liên kết "Next"
nextLink.addEventListener('click', (event) => {
    event.preventDefault();
    currentPage++;
    // Gọi hàm để thực hiện thay đổi trang hiển thị
    renderPage(currentPage);
});

// Hàm để thực hiện thay đổi trang hiển thị
function renderPage(page) {
    // Gọi các hàm hoặc thực hiện các thay đổi cần thiết khi chuyển trang
    console.log('Đã chuyển đến trang:', page);
}