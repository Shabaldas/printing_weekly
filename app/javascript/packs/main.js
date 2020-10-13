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
      image.src = post.display_resources[0].src
      link.href = `//www.instagram.com/p/${post.shortcode}`
      link.target = '_blank'
      link.setAttribute('class', 'instagram-post col-md-4 col-6')
      link.appendChild(image)
      return link
    }))
    targetNode.append(imageNodes)
  })
.catch(err => console.error(err))
})