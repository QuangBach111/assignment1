function validateLoginForm() {
    let account = $('#signInEmailOrUsername').val();
    let password = $('#signInPassword').val();
    let checkSignInAccount = $('#checkSignInAccount');
    let checkSignInPassword = $('#checkSignInPassword');
    checkSignInAccount.empty();
    checkSignInPassword.empty();

    if (account.trim() === '') {
        $('#checkSignInAccount').next('.text-danger')
        checkSignInAccount.append('Username/Email cannot be empty');
        return false; // Prevent form submission
    }

    if (password.trim() === '') {
        $('#checkSignInPassword').next('.text-danger')
        checkSignInPassword.append('Password cannot be empty');
        return false; // Prevent form submission
    }
    // Additional validation logic, e.g., checking username/password length, format, etc.

    return true; // Allow form submission
}
//


