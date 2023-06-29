// Testing rule for resolved_apis feature
// Created by Dominika Regeciova

import "cuckoo"

rule test_cuckoo
{
    condition:
    cuckoo.genrex.api_call(/WNetGetProviderNameW/) >= 3 or
    cuckoo.genrex.atom(/rOBDoI/) >= 3 or
    cuckoo.filesystem.file_access(/(^|\\)C:\\Users\\[^\\]+/) >= 12 or
    cuckoo.registry.key_access(/(^|\\)Software\\Downloader/) or
    cuckoo.sync.mutex(/kzyyjqyi/) >= 1 or
    cuckoo.genrex.resolved_api(/iertutil.dll!#16/) >= 3 or
    cuckoo.genrex.semaphore(/LJpExtC8rffiNYPa94/) >= 2
}
