apt_repository 'longview' do
  uri          'http://apt-longview.linode.com/'
  distribution node['lsb']['codename']
  components   %w[main]
  key          'https://apt-longview.linode.com/linode.gpg'
end

directory '/etc/linode'

file '/etc/linode/longview.key' do
  content Chef::EncryptedDataBagItem.load("passwords", "linode")['api_key']
end

package 'linode-longview'

