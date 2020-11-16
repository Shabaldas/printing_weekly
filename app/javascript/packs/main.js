$(document).on('ready turbolinks:load', function() {
  const $navbar = $('.navbar')
  const $window = $(window)
  let scrollTop = $window.scrollTop()
  
  $(window).on('scroll', function (event) {
    let scrollTop = $window.scrollTop()
    
    if (scrollTop >= 40) $navbar.addClass('navbar--scrolled')
    else $navbar.removeClass('navbar--scrolled')
    console.log(scrollTop)
  })
  console.log(scrollTop)


  getLastIstagramPosts('printingweekly', 24)
  .then(posts => {
    const targetNode = document.getElementById('instagram-posts')
    const imageNodes = document.createDocumentFragment()

    imageNodes.append(...posts.map(post => {
      const image = document.createElement('img')
      const link = document.createElement('a')

      image.dataset.src = post.display_resources[0].src
      link.target = '_blank'
      link.href = (`https://www.instagram.com/p/${post.shortcode}`)
      image.classList.add('lazy')
      // console.log((link.href).slice(-3))
      link.setAttribute('class', 'instagram-post col-md-4 col-6')
      link.appendChild(image)
      return link
    }))
    targetNode.appendChild(imageNodes)
  })
  .then(() => {
    $('.lazy').each(function(i) {
      setTimeout(() => $(this).Lazy({ effect: 'fadeIn', effectTime: 2000, threshold: 0 }), i*25)
    })
  })
.catch(err => console.error(err))
})