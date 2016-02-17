
<!-- extends admin_layout-->
<div class="company-info page">
  <form method="POST" action="" enctype="multipart/form-data">
    <h3>Slide Images</h3>
    <!-- - for(var i = 0; i < company.img_set.length; i++) {--><img src="${company.img_set[i]}" style="max-width:400px;"/>
    <input type="hidden" value="${company.img_set[i]}" name="img_set"/><a href="/admin/delimg?img=${encodeURIComponent(company.img_set[i])}">Delete</a>
    <!-- - }--><br/>
    <input type="file" name="img"/><br/>
    <input type="button" value="Add" id="img-add" class="add"/>
    <h3>Description</h3>
    <!-- textarea(name='description') ${company.description}-->
    <textarea name="description" style="height:500px; width: 690px" id="editor_2">${company.description}</textarea>
    <script charset="utf-8" src="/editor/kindeditor-min.js"></script>
    <script charset="utf-8" src="/editor/lang/zh_CN.js"></script>
    <script>
      KindEditor.ready(function(K) {
              window.editor = K.create('#editor_2', {uploadJson: '/editor/upload_json'});
      });
    </script>
    <h3>Table Information</h3>
    <!-- - for(var i = 0; i < company.table_info.length; i++) {-->
    <div class="pair">
      <input name="table_info_key" value="${company.table_info[i][0]}" class="pair-info-key"/>
      <input name="table_info_value" value="${company.table_info[i][1]}" class="pair-info-value"/>
    </div>
    <!-- - }-->
    <input type="button" value="Add" id="table-add" class="add"/>
    <h3>Contact</h3>
    <!-- - for(var i = 0; i < company.contact.length; i++) {-->
    <div class="pair">
      <input name="contact_key" value="${company.contact[i][0]}" class="pair-info-key"/>
      <input name="contact_value" value="${company.contact[i][1]}" class="pair-info-value"/>
    </div>
    <!-- - }-->
    <input type="button" value="Add" id="contact-add" class="add"/>
    <hr/>
    <button type="submit" class="send">Submit</button>
  </form>
</div>