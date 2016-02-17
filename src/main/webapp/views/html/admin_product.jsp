
<!-- extends admin_layout-->
<div class="page">
  <input type="button" value="Add Product" onclick="location=&quot;/admin/product/add&quot;" id="pop" class="add"/>
  <form action="/admin/group/add" method="POST" class="tools">
    <input name="group_name"/><span>belong to</span>
    <select name="id">
      <option value="">
      </option>
      <option value="${gid}">${groups[groups[gid].father].name} -> ${groups[gid].name}
      </option>
      <option value="${gid}">${groups[gid].name}
      </option>
    </select>
    <button type="submit">Add Group</button>
  </form><br/>
  <form action="/admin/group/delete" method="POST" class="tools">
    <select name="id">
    </select>
    <option value="${gid}">${groups[groups[gid].father].name} -> ${groups[gid].name}
    </option>
    <option value="${gid}">${groups[gid].name}
    </option>
    <button type="submit">Delete Group</button>
  </form>
  <form action="/admin/group/rename" method="POST" class="tools">
    <input name="group_name"/>
    <select name="id">
    </select>
    <option value="${gid}">${groups[groups[gid].father].name} -> ${groups[gid].name}
    </option>
    <option value="${gid}">${groups[gid].name}
    </option>
    <button type="submit">Rename Group</button>
  </form>
  <form action="/admin/product/delete" method="POST">
    <table class="product-info">
      <tr>
        <td></td>
        <td>Product Name</td>
        <td>Group Name</td>
        <td>Action</td>
      </tr>
      <tr>
        <td>
          <input type="checkbox" value="${products[i]._id}" name="id"/>
        </td>
        <td>${products[i].name}</td>
        <td>${(groups[products[i].group_id] || '').name}</td>
        <td><a href="/admin/product/update/${products[i]._id}" value="${products[i]._id}" class="update">Update</a></td>
      </tr>
    </table>
    <button type="submit">Delete</button>
  </form>
</div>