from mininet.topo import Topo

class MyTopo(Topo):
	
	def build(self):
		# creating nodes
		s1 = self.addSwitch('s1')
		s2 = self.addSwitch('s2')

		h1 = self.addHost('h1')
		h2 = self.addHost('h2')	
		# creating links
		self.addLink(s1, s2)
		self.addLink(s1, h1)
		self.addLink(s2, h2)

topos = {'my_topo': (lambda: MyTopo())}
