var check = function() {

  if (document.getElementById('password').value == document.getElementById('confirm_password').value) {
    document.getElementById('confirm_password').style.color = 'black';
    document.getElementById('signup-btn').disabled= false;
  } else {
    document.getElementById('confirm_password').style.color = 'red';
    document.getElementById('signup-btn').disabled= true;
  }
}


