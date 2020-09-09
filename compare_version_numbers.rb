# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
   Gem::Version.new(version1) <=> Gem::Version.new(version2)
end
