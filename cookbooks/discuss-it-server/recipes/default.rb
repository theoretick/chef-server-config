directory '/var/www/discuss-it' do
  mode 0755
  # equivalent of `mkdir -p`
  recursive true
end

node['discuss-it']['dependencies'].each do |pkg|
  package pkg
end

# override default nginx.conf
template '/etc/nginx/nginx.conf' do
  source 'nginx.conf.erb'
  mode 0644
end
