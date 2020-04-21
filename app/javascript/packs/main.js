getLastIstagramPosts('renderweekly', 18)
  .then(posts => {
    const targetNode = document.getElementById('instagram-posts')
    const imageNodes = document.createDocumentFragment()

    imageNodes.append(...posts.map(post => {
      const image = document.createElement('img')
      const link = document.createElement('a')
      image.src = post.display_resources[0].src
      image.style = 'width: 100px; height: 100px; object-fit:cover'
      link.href = `//www.instagram.com/p/${post.shortcode}`
      link.target = '_blank'
      link.setAttribute('class', 'instagram-post')
      link.appendChild(image)
      return link
    }))
    targetNode.append(imageNodes)
  })
.catch(err => console.error(err))