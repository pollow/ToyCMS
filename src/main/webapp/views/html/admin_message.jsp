
<!-- extends admin_layout-->
<div class="page">
  <table class="message">
    <tr>
      <th>Achieve</th>
      <th>Content</th>
    </tr>
    <!-- - for(var i = 0; i < messages.length; i++) {-->
    <tr>
      <td class="achieve"><a href="/admin/message/achieve?id=${messages[i]._id}">Achieve</a></td>
      <td>
        <p><strong>Author: ${messages[i].author}</strong></p>
        <p><strong>Contact: ${messages[i].contact}</strong></p>
        <p><strong>Date: ${messages[i].time}</strong></p>
        <p><strong>Conteng:</strong></p>
        <p>${messages[i].content}</p>
      </td>
    </tr>
  </table>
</div>