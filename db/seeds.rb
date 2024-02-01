# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
[
  {
    title: "Lorem ipsum dolor sit",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit duis tristique sollicitudin nibh. Elit ut aliquam purus sit amet. Congue quisque egestas diam in arcu cursus euismod quis viverra. Velit sed ullamcorper morbi tincidunt ornare massa eget. Iaculis at erat pellentesque adipiscing. Ornare massa eget egestas purus viverra accumsan in nisl. Eu sem integer vitae justo. Lectus sit amet est placerat in egestas erat. Adipiscing elit duis tristique sollicitudin. Enim ut tellus elementum sagittis vitae et leo duis ut. Facilisis sed odio morbi quis commodo odio aenean sed. Duis at tellus at urna condimentum mattis pellentesque id nibh. Sed adipiscing diam donec adipiscing tristique. Sit amet risus nullam eget felis eget nunc lobortis. Enim ut sem viverra aliquet eget sit amet. Lectus vestibulum mattis ullamcorper velit sed ullamcorper."
  },
  {
    title: "Quam pellentesque nec",
    body: "Quam pellentesque nec nam aliquam sem. Lobortis mattis aliquam faucibus purus in massa tempor nec. Donec enim diam vulputate ut pharetra sit amet aliquam id. Non consectetur a erat nam. Nibh nisl condimentum id venenatis. Volutpat diam ut venenatis tellus in metus vulputate eu. Consequat ac felis donec et odio pellentesque. Vestibulum sed arcu non odio euismod. Quisque sagittis purus sit amet volutpat consequat mauris nunc. Integer enim neque volutpat ac tincidunt vitae. Molestie a iaculis at erat. Sed id semper risus in. Lectus sit amet est placerat in egestas erat. Lectus quam id leo in. Eget mauris pharetra et ultrices."
  },
  {
    title: "Ut placerat orci nulla",
    body: "Ut placerat orci nulla pellentesque dignissim enim sit amet. In hendrerit gravida rutrum quisque non. Turpis in eu mi bibendum neque egestas congue quisque egestas. Dictum sit amet justo donec enim diam vulputate. Enim sit amet venenatis urna cursus eget nunc. Nulla aliquet enim tortor at auctor urna nunc id. Lobortis elementum nibh tellus molestie nunc non blandit massa. Nulla facilisi morbi tempus iaculis urna id volutpat. Vestibulum morbi blandit cursus risus at ultrices. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum."
  },
  {
    title: "Nam aliquam sem et",
    body: "Nam aliquam sem et tortor consequat id. Amet est placerat in egestas erat imperdiet sed euismod nisi. A erat nam at lectus urna. Ullamcorper sit amet risus nullam eget felis. Ultricies integer quis auctor elit sed vulputate mi sit amet. Fermentum odio eu feugiat pretium nibh ipsum consequat. Maecenas sed enim ut sem viverra aliquet eget sit amet. Faucibus a pellentesque sit amet porttitor eget dolor. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Cum sociis natoque penatibus et magnis dis parturient. Erat velit scelerisque in dictum non consectetur. Lacus luctus accumsan tortor posuere ac ut consequat semper. Lorem ipsum dolor sit amet."
  },
  {
    title: "Elit pellentesque habitant",
    body: "Elit pellentesque habitant morbi tristique senectus et netus et malesuada. Nisl purus in mollis nunc sed id. Neque egestas congue quisque egestas. Cursus in hac habitasse platea dictumst quisque sagittis purus. Neque sodales ut etiam sit amet nisl purus in mollis. Dui faucibus in ornare quam viverra. Tellus pellentesque eu tincidunt tortor. Pellentesque pulvinar pellentesque habitant morbi tristique. Sit amet mattis vulputate enim nulla aliquet porttitor lacus. In cursus turpis massa tincidunt dui ut ornare lectus sit. Enim ut sem viverra aliquet eget sit amet tellus. Tempus iaculis urna id volutpat lacus. Orci sagittis eu volutpat odio. Sit amet luctus venenatis lectus. Pretium nibh ipsum consequat nisl vel pretium lectus quam id. Metus aliquam eleifend mi in. Mi tempus imperdiet nulla malesuada pellentesque elit eget gravida. Malesuada fames ac turpis egestas maecenas pharetra convallis."
  }
].each do |lorem|
  Post.find_or_create_by(title: lorem[:title], body: lorem[:body])
end
