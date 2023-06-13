function submitForm(){
    // Create a dynamic form element
    let form = document.createElement('form');
    form.method = 'POST'; // Set the method to POST
    form.action = '/assignment1_war_exploded/logout-servlet'; // Set the target URL
    // Append the form to the document body and submit it
    document.body.appendChild(form);
    form.submit();
}