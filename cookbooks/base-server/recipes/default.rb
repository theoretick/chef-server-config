user 'theoretick' do
  password 'mypass'
end

directory '/home/theoretick' do
  owner 'theoretick'
  group 'theoretick'
  mode 0700
end

directory '/var/www/myapp' do
  mode 0755
  # equivalent of `mkdir -p`
  recursive true
end

template '/var/www/myapp/index.html' do
  source 'index.html.erb'
  mode 0644
end

# install nginx
package 'nginx'

# copy default config into place
template '/etc/nginx/nginx.conf' do
  source 'nginx.conf.erb'
  mode 0644
end
