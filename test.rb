a = [{id: 1, name: "wangyun"},{id: 2, name: "hehe"}]
a.map!{|x| x[:id]}
p a
p File.absolute_path("./config/deploy.rb")