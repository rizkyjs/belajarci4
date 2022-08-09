// Dark Mode
const toggle = document.querySelector('.toggle');
let tema = localStorage.getItem('tema');

if (!tema) {
    localStorage.setItem('tema', 'light');
}

const darkMode = () => {
    document.body.classList.add('dark-mode');
    toggle.innerHTML = 'Light Mode';
    localStorage.setItem('tema', 'dark');
}
const lightMode = () => {
    document.body.classList.remove('dark-mode');
    toggle.innerHTML = 'Dark Mode';
    localStorage.setItem('tema', 'light');
}

if (tema === 'dark') {
    darkMode();
}

toggle.addEventListener('click', function(e) {
    tema = localStorage.getItem('tema');
    if (tema === 'light') {
        darkMode();
    } else {
        lightMode();
    }
    e.preventDefault();
});


// Jquery Untuk ubah Data
$(function(){


    tambahData();
    // tampilModalUbah();

    function tambahData() {
        $('.tambahData').on('click', function(){
            $('#judulModal').html('Tambah Data Mahasiswa');
            $('.modal-footer button[type=submit]').html('Tambah Data');
        });
    }
    $('.tampilModalUbah').on('click', function(){
        $('#judulModal').html('Ubah Data Mahasiswa');
        $('.modal-footer button[type=submit]').html('Ubah Data');
        
        const id = $(this).data('id');
        $.ajax({
            url: 'http://localhost/phpmvc/public/mahasiswa/getubah',
            data: {id : id},
            method: 'post',
            success: function(){
                console.log(data);
            }
        });
    });
    // function tampilModalUbah() {

    // }
    
});