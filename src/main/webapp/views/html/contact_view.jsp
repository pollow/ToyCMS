
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
  <div class="contact around block">
    <h2>Contact</h2>
    <div class="merchant">
      <div class="merchant-portrait"><img src="/img/portrait.png"/></div>
      <div class="merchant-name">
        <h4>Ms. Fengjuan Zhang</h4><span>General Manager</span>
      </div>
    </div>
    <table>
      <tbody></tbody>
    </table>
    <div class="clearfix"></div>
  </div>
  <div class="board-wrapper block">
    <div class="exhibit-title"><span>Send inquiry</span></div>
    <div class="board-content around">
      <p>Please leave your message and question if you are interested in my products:</p>
      <form action="/index/message" method="POST">
        <table>
          <tbody>
            <tr>
              <td>Name</td>
              <td>
                <input name="author"/>
              </td>
            </tr>
            <tr>
              <td>Contact</td>
              <td>
                <input name="contact"/>
              </td>
            </tr>
            <tr>
              <td valign="top">Message:&nbsp</td>
              <td>
                <textarea name="content"></textarea>
                <button type="submit" class="send">Send</button>
              </td>
            </tr>
          </tbody>
        </table>
      </form>
    </div>
  </div>
</div>