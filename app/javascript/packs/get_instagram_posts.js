window.getLastIstagramPosts = getLastIstagramPosts;

function getLastIstagramPosts(userName, needPost) {
    const querySting = object =>
        Object.keys(object)
        .map(key => `${key}=${object[key]}`)
        .join('&')

    return new Promise(async(resolve, reject) => {
        let user = {}
        let posts = []

        await findUser(userName).then(foundUser => user = foundUser);
        if (user.username !== userName) reject(`Not found user: ${userName}`)
        await fetchPosts(user.pk);

        function findUser(userName) {
            const params = querySting({
                context: 'blended',
                query: userName,
                rank_token: 0.017391585598313553,
                include_reel: true,
            })

            return fetch(`//www.instagram.com/web/search/topsearch/?${params}`)
                .then(res => res.json())
                .then(data => data.users[0].user)
        }

        function fetchPosts(userId, after = null) {
            const params = querySting({
                query_hash: 'f2405b236d85e8296cf30347c9f08c2a',
                variables: encodeURIComponent(
                    JSON.stringify({
                        id: userId,
                        first: needPost < 50 ? needPost : 50,
                        ...(after && { after }),
                    }),
                ),
            })

            fetch(`//www.instagram.com/graphql/query/?${params}`)
                .then(res => res.json())
                .then(json => {
                    if (json.status !== 'ok') return
                    const { count, page_info, edges } = json.data.user.edge_owner_to_timeline_media

                    posts = posts.concat(edges.map(item => item.node))
                    if (needPost > posts.length && page_info.has_next_page) fetchPosts(userId, page_info.end_cursor)
                    else {
                        const formattedPosts = posts.reduce((acc, post) => needPost > acc.length ?
                            acc.concat({
                                id: post.id,
                                shortcode: post.shortcode,
                                display_url: post.display_url,
                                dimensions: post.dimensions,
                                display_resources: post.display_resources,
                                is_video: post.is_video,
                            }) : acc, [])
                        resolve(formattedPosts)
                    }
                });
        }
    })
}