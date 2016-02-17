<!DOCTYPE html>
<html>
  <head>
    <title>China Carpet Tiles, Cowhide Patch Rugs (NP-053) - Suzhou Changyue Imp. &amp; Exp. Co., Ltd..</title>
    <meta name="Keywords" content="Suzhou Changyue Imp. &amp;amp; Exp. Co., Ltd., China Carpet Tiles, Cowhide Patch Rugs (NP-053), Cut &amp;amp; Loop Pile Hotel Carpets">
    <meta name="Description" content="China Manufacturer, Trading Company of Carpet Tiles, Cowhide Patch Rugs (NP-053), Cut &amp;amp; Loop Pile Hotel Carpets - Suzhou Changyue Imp. &amp;amp; Exp. Co., Ltd.">
    <link rel="stylesheet" href="/css/base.css">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/company.css">
    <link rel="stylesheet" href="/css/group.css">
    <link rel="stylesheet" href="/css/product.css">
    <link rel="stylesheet" href="/css/coin-slider-styles.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="stylesheet" href="/css/jquery-ui-1.10.4.min.css">
    <script type="text/javascript" src="/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="/js/script.js"></script>
  </head>
  <body>
    <form action="/admin/product/add" method="POST" enctype="multipart/form-data" style="width:700px; margin: 0 auto" id="product_add">
      <h1>Add a new product</h1>
      <h3>Upload image</h3>
      <input type="file" name="img">
      <h3>Name</h3>
      <input name="name">
      <h3>Short Information</h3>
      <div class="pair">
        <input name="short_info_key">
        <input name="short_info_value">
      </div>
      <input type="button" value="Add" class="add short-add">
      <h3>Major Information</h3>
      <div class="pair">
        <input name="major_info_key">
        <input name="major_info_value">
      </div>
      <input type="button" value="Add" class="add major-add">
      <h3>Detail Information</h3>
      <div class="pair">
        <input name="detail_info_key">
        <input name="detail_info_value">
      </div>
      <input type="button" value="Add" class="add detail-add">
      <h3>Group</h3>
      <select name="group_id">
        <option value="${gid}">${groups[gid].name}</option>
      </select>
      <h3>Description</h3>
      <textarea name="description" style="height:500px; width: 690px" id="editor_1"></textarea>
      <script charset="utf-8" src="/editor/kindeditor-min.js"></script>
      <script charset="utf-8" src="/editor/lang/zh_CN.js"></script>
      <script>
        KindEditor.ready(function(K) {
                window.editor = K.create('#editor_1', {uploadJson: '/editor/upload_json'});
        });
      </script>
      <h3>Mark</h3>
      <input name="mark"><br><br>
      <button id="new_send" class="send">Submit</button>
    </form>
  </body>
</html>