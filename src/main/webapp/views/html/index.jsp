
<!-- extends layout-->
<div class="page">
  <div id="slider"><img src="/img/slider1.jpg"/><img src="/img/slider2.jpg"/><img src="/img/slider3.jpg"/></div>
  <div class="exhibit block">
    <div class="exhibit-title"><span>Highlighted Exhibits</span><a href="/group" style="color:inherit; text-decoration: none;"><i>view more</i></a></div>
    <div class="exhibit-content">
      <table>
        <tbody>
          <tr>
            <td></td>
          </tr>
          <tr>
            <td align="center"><a href="/product/${products[i+j]._id}"><img src="${products[i+j].img}"/></a>
              <div class="desc"><strong>${products[i+j].name}</strong>
                <p>${str}</p>
              </div>
            </td>
          </tr>
          <!-- -}-->
          
          
        </tbody>
      </table>
    </div>
  </div>
</div>