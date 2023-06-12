// // function validateForm() {
// //     let registerUsername = $('#registerUserName').val();
// //     let registerEmail = $('#registerEmail').val();
// //     let registerPassword = $('#registerPassword').val();
// //     let registerConfirmPassword = $('#registerConfirmPassword').val();
// //
// //     if (registerUsername.trim() === '') {
// //     alert("You must enter a username");
// //     return false;
// // } else if (registerEmail.trim() === '') {
// //     alert("You must enter an email address");
// //     return false;
// // } else if (!validateEmail(registerEmail)) {
// //     alert("Invalid email address");
// //     return false;
// // } else if (registerPassword.trim() === '') {
// //     alert("You must enter a password");
// //     return false;
// // } else if (registerConfirmPassword.trim() === '') {
// //     alert("You must enter confirm password");
// //     return false;
// // } else if (registerPassword !== registerConfirmPassword) {
// //     alert("Password and confirm password must match");
// //     return false;
// // }
// //
// //     return true;
// // }
// //
// //     function validateEmail(email) {
// //     var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
// //     return emailRegex.test(email);
// // }
// function validateForm() {
//     let registerUsername = $('#registerUserName').val();
//     let registerEmail = $('#registerEmail').val();
//     let registerPassword = $('#registerPassword').val();
//     let registerConfirmPassword = $('#registerConfirmPassword').val();
//
//     let errorContainer = $('#errorContainer');
//     errorContainer.empty(); // Xóa các thông báo lỗi trước đó (nếu có)
//
//     let hasError = false;
//
//     if (registerUsername.trim() === '') {
//         errorContainer.append('<p>You must enter a username</p>');
//         hasError = true;
//     }
//
//     if (registerEmail.trim() === '') {
//         errorContainer.append('<p>You must enter an email address</p>');
//         hasError = true;
//     } else if (!validateEmail(registerEmail)) {
//         errorContainer.append('<p>Invalid email address</p>');
//         hasError = true;
//     }
//
//     if (registerPassword.trim() === '') {
//         errorContainer.append('<p>You must enter a password</p>');
//         hasError = true;
//     }
//
//     if (registerConfirmPassword.trim() === '') {
//         errorContainer.append('<p>You must enter confirm password</p>');
//         hasError = true;
//     } else if (registerPassword !== registerConfirmPassword) {
//         errorContainer.append('<p>Password and confirm password must match</p>');
//         hasError = true;
//     }
//
//     if (hasError) {
//         errorContainer.show(); // Hiển thị container chứa thông báo lỗi
//         return false; // Ngăn chặn việc submit form
//     }
//
//     return true;
// }
// true
function validateRegisterForm(){
    let registerUsername = $('#registerUserName').val().trim();
    let registerEmail = $('#registerEmail').val().trim();
    let registerPassword = $('#registerPassword').val().trim();
    let registerConfirmPassword = $('#registerConfirmPassword').val().trim();
    let checkRegisterConfirmPassword = $('#checkRegisterConfirmPassword');
    let checkRegisterEmail = $('#checkRegisterEmail');
    let checkRegisterPassword = $('#checkRegisterPassword');
    let checkRegisterUserName = $('#checkRegisterUserName');
    checkRegisterConfirmPassword.empty(); // Xóa các thông báo lỗi trước đó (nếu có)
    checkRegisterEmail.empty();
    checkRegisterPassword.empty();
    checkRegisterUserName.empty();
    let hasError = false;
    // Kiểm tra các trường nhập liệu không được để trống
    if (registerUsername === '') {
        $('#registerUserName').next('.text-danger')
        checkRegisterUserName.append('You must enter a username');
        hasError = true;
    }
    if (registerEmail === '') {
        $('#registerEmail').next('.text-danger')
        checkRegisterEmail.append('You must enter an email address');
        hasError = true;
    } else{
        let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(registerEmail)) {
            $('#registerEmail').next('.text-danger')
            checkRegisterEmail.append('Invalid email address');
            hasError = true;
        }
    }
    if (registerPassword === '') {
        $('#registerPassword').next('.text-danger')
        checkRegisterPassword.append('You must enter a password');
        hasError = true;
    } else if (registerPassword.length < 8) {
        $('#registerPassword').next('.text-danger')
        checkRegisterPassword.append('Password must be at least 8 characters');
        hasError = true;
    }
    if (registerConfirmPassword === '') {
        $('#registerConfirmPassword').next('.text-danger')
        checkRegisterConfirmPassword.append('You must enter confirm password');
        hasError = true;
    } else{
        if (registerPassword !== registerConfirmPassword) {
            $('#registerConfirmPassword').next('.text-danger')
            checkRegisterConfirmPassword.append('Password and confirm password must match');
            hasError = true;
        }
    }
    if (hasError) {
        checkRegisterConfirmPassword.show(); // Xóa các thông báo lỗi trước đó (nếu có)
        checkRegisterEmail.show();
        checkRegisterPassword.show();
        checkRegisterUserName.show();
        return false; // Ngăn chặn việc submit form
    } else{
        return true;
    }
    return true;
}
// Kiểm tra nếu người dùng đã chọn "Remember Me" trước đó
if (localStorage.getItem('rememberMe') === 'true') {
    // Đặt trạng thái của checkbox thành checked
    $('#rememberMe').prop('checked', true);

    // Đặt giá trị của trường nhập liệu (ví dụ: username)
    // từ dữ liệu đã lưu trong localStorage
    $('#username').val(localStorage.getItem('username'));
}

// Xử lý sự kiện khi người dùng submit form



