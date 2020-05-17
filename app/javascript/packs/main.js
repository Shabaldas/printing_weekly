getLastIstagramPosts('renderweekly', 18)
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



// module Shared
//   class TeamStatus
//     def self.change_status(*attrs)
//       new(*attrs).change_status
//     end

//     def initialize(record, params)
//       @gt_teams_list = gt_teams_list
//       @params = params
//     end

//     def change_status
//       ap GtTeamsList.reflections.keys
//       ap GtTeamsList.reflections
//       ap GtTeamsList.reflect_on_all_associations
//       ap gt_teams_list
//       ap params.to_unsafe_h
//       ap params[:all_team_ids]&.any?
//       ap params[:players_attributes]&.empty?
//       ap params[:teams_attributes]&.empty?
//       ap 'lol'
//     end

//     private

//     attr_reader :gt_teams_list, :params
//   end
// end
