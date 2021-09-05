3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics create"

10.times do |blog|
	Blog.create!(
		tittle: "My bhog Posts#{blog}",
		body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.
The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.
Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.
Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)",
  topic_id: Topic.last.id
  )
end

puts "10 blogs created"

5.times do |skill|
	Skill.create!(
		tittle: "Rails #{skill}",
		percent_utilized: 15
	)
end

puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title #{portfolio_item}",
		subtotle: "Rails",
		body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.
Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form,
accompanied by English versions from the 1914 translation by H. Rackham",
		main_image: "https://placehold.it/600x400",
		thumb_image: "https://placehold.it/350x200"
	)
end


1.times do |portfolio_item|2
	Portfolio.create!(
		title: "Portfolio title #{portfolio_item}",
		subtotle: "Angular",
		body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.
Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form,
accompanied by English versions from the 1914 translation by H. Rackham",
		main_image: "https://placehold.it/600x400",
		thumb_image: "https://placehold.it/350x200"
	)
end


3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technolohyes created"