
<!-- extends admin_layout-->
<div class="page">
  <form action="/admin/login" method="POST">
    <table class="login">
      <tr>
        <td><strong>username:</strong></td>
        <td>
          <input name="username"/>
        </td>
      </tr>
      <tr>
        <td><strong>password:</strong></td>
        <td>
          <input type="password" name="password"/>
        </td>
      </tr>
      <tr>
        <td>
          <input type="submit" value="Login"/>
        </td>
      </tr>
    </table>
  </form>
</div>