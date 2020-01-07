require 'std.core.util'

local rectMeta = util.meta.new("rect")

function rect(min, max)
    ASSERT_ARG_TYPE(1, "min", "vec2")
    ASSERT_ARG_TYPE(2, "max", "vec2")
    ASSERT_COND("min.x < max.x")
    ASSERT_COND("min.y < max.y")

    local t = {
        __h = Rect(min.x, min.y, max.x, max.y)
    }
    setmetatable(t, rectMeta)
    return t
end

function rectFromNative(jassRect)
    local t = {
        __h = jassRect
    }
    setmetatable(t, rectMeta)
    return t
end

function rectMeta.get:minx()
    return GetRectMinX(self.__h)
end

function rectMeta.get:miny()
    return GetRectMinY(self.__h)
end

function rectMeta.get:maxx()
    return GetRectMaxX(self.__h)
end

function rectMeta.get:maxy()
    return GetRectMaxY(self.__h)
end

function rectMeta.get:width()
    return self.maxx - self.minx
end

function rectMeta.get:height()
    return self.maxy - self.miny
end

function rectMeta.funcs:update(minx, miny, maxx, maxy)
    SetRect(self.__h, minx, miny, maxx, maxy)
end

function rectMeta.set:width(width)
    ASSERT_ARG_TYPE(1, "width", "number")
    ASSERT_COND("width >= 0")
    self:update(self.minx, self.miny, self.minx + width, self.maxy)
end

function rectMeta.set:height(height)
    ASSERT_ARG_TYPE(1, "height", "number")
    ASSERT_COND("height >= 0")
    self:update(self.minx, self.miny, self.maxx, self.miny + height)
end

function rectMeta.funcs:anchorCenter(point)
    ASSERT_ARG_TYPE(1, "point", "vec2")
    local halfWidth = self.width / 2
    local halfHeight = self.height / 2
    self:update(
        point.x - halfWidth,
        point.y - halfHeight,
        point.x + halfWidth,
        point.y + halfWidth
    )
end

function rectMeta.funcs:anchorTopLeft(point)
    ASSERT_ARG_TYPE(1, "point", "vec2")
    local width = self.width
    local height = self.height
    self:update(
        point.x,
        point.y - width,
        point.x + height,
        point.y
    )
end

function rectMeta.funcs:anchorTopRight(point)
    ASSERT_ARG_TYPE(1, "point", "vec2")
    local width = self.width
    local height = self.height
    self:update(
        point.x - width,
        point.y - height,
        point.x,
        point.y
    )
end

function rectMeta.funcs:anchorBotLeft(point)
    ASSERT_ARG_TYPE(1, "point", "vec2")
    local width = self.width
    local height = self.height
    self:update(
        point.x,
        point.y - height,
        point.x + width,
        point.y
    )
end

function rectMeta.funcs:anchorBotRight(point)
    ASSERT_ARG_TYPE(1, "point", "vec2")
    local width = self.width
    local height = self.height
    self:update(
        point.x - width,
        point.y,
        point.x,
        point.y + height
    )
end