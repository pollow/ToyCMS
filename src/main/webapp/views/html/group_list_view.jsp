
<!-- extends layout-->
<div class="page">
  <div class="catagory block">
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
  <div class="list-wrapper block">
    <div class="list around">
      <div class="list-setting">
        <div class="list-view">View:<a href="/setview/list/${current}" class="icon-view icon-list"></a><a href="/setview/gallery/${current}" class="icon-view icon-gallery"></a></div>
      </div>
      <div class="list-content">
        <div class="list-item">
          <div class="item-img"><a href="/product/${products[i]._id}"><img src="${products[i].img}"/></a></div>
          <div class="item-desc"><strong>Product Name</strong><br/><span>key ${products[i].short_info[j][0]} : value ${products[i].short_info[j][1]}</span><br/>
          </div>
          <div class="clearfix"></div>
        </div>
        <!-- -}-->
      </div>
      <div class="list-num"><a href="/group/${current}?page=${i}">${i}</a>
        <!-- -}--><a href="/group/${current}?page=${Number(current_page)+1}">Next ></a>
      </div>
    </div>
  </div>
</div>