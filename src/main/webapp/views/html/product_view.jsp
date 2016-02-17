
<!-- extend layout-->
<div class="page">
  <div class="catagory block">
    <div class="exhibit-title"><span>Supplier Profile</span></div>
    <ul class="around">
      <li>
        <h3>Suzhou Changyue Imp. & Exp. Co., Ltd.</h3>
      </li>
      <li><strong>${company.table_info[i][0]} :</strong><span>${' '+company.table_info[i][1]}</span></li>
      <li><strong>${company.contact[i][0]} :</strong><span>${' '+company.contact[i][1]}</span></li>
    </ul>
    <div class="exhibit-title"><span>Catagory</span></div>
    <ul class="around">
      <li val="${groups[i]._id}" class="father-group-list"><a href="/group/${groups[i]._id}">${groups[i].group_name}(${group_size[groups[i]._id] || 0})<span style="float: right">></span></a>
        <ul id="${groups[i]._id}" class="sub-group-list">
          <li><a href="/group/${tmp}">${gg[tmp].name}(${group_size[tmp] || 0})</a></li>
        </ul>
      </li>
      <li><a href="/group/${groups[i]._id}">${groups[i].group_name}(${group_size[groups[i]._id] || 0})</a></li>
    </ul>
  </div>
  <div class="product-detail-wrapper block">
    <div class="exhibit-title"><span>Product Detail</span></div>
    <div class="product-detail around">
      <h2>${product.name}</h2>
      <div class="brief"><a href="${product.img}" target="_blank"><img src="${product.img}"/></a>
        <table class="major-info">
          <tr>
            <td><a href="#" id="contact-now">Contact Now</a><span> /</span><a href="#" id="ask-price"> Get Latest Price!</a></td>
          </tr>
          <tr>
            <td class="key">${product.major_info[i][0]}:</td>
            <td class="value">${product.major_info[i][1]}</td>
          </tr>
        </table>
      </div>
      <hr class="delimiter"/>
      <table class="detail-info">
        <tr>
          <td class="key">${product.detail_info[i][0]}:</td>
          <td class="value">${product.detail_info[i][1]}</td>
          <td class="key">${product.detail_info[i+1][0]}:</td>
          <td class="value">${product.detail_info[i+1][1]}</td>
        </tr>
      </table>
      <hr class="delimiter"/>
      <div>${product.description}</div>
    </div>
  </div>
</div>
<div id="price-form">
  <iframe src="/price/${product._id}" height="90%" width="100%" frameborder="0"></iframe>
</div>
<div id="contact-form">
  <iframe src="/contactnow/${product._id}" height="90%" width="100%" frameborder="0"></iframe>
</div>