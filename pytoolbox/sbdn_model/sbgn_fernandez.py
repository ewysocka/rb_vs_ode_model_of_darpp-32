import libsbgnpy.libsbgn as libsbgn
from libsbgnpy.libsbgnTypes import Language, GlyphClass, ArcClass, Orientation

# create empty sbgn
sbgn = libsbgn.sbgn()

# create map, set language and set in sbgn
map = libsbgn.map()
map.set_language(Language.ER)
sbgn.set_map(map)

# create a bounding box for the map
# <bbox x="0" y="0" w="363" h="253"/>
# [1] de novo and set all attributes
# box = libsbgn.bbox()
# box.set_x(0)
# box.set_y(0)
# box.set_w(363)
# box.set_h(253)
# [2] de novo with attributes at creation
box = libsbgn.bbox(x=0, y=0, w=363, h=253)
map.set_bbox(box)
map.
