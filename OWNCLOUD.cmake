set( APPLICATION_NAME       "Files.fm sync" )
set( APPLICATION_EXECUTABLE "Files_fm_sync" )
set( APPLICATION_DOMAIN     "files.fm" )
set( APPLICATION_VENDOR     "files.fm" )


if (CMAKE_BUILD_TYPE)
    string(TOLOWER "${CMAKE_BUILD_TYPE}" CMAKE_BUILD_TYPE_LOWER)
    
    if (CMAKE_BUILD_TYPE_LOWER MATCHES "release")
        set( APPLICATION_UPDATE_URL "https://failiem.lv/client/get_info.php" CACHE string "URL for updater" )
    else()
        set( APPLICATION_UPDATE_URL "https://dev4.failiem.lv/client/get_info.php" CACHE string "URL for updater" )
    endif()
    
else()
    set( APPLICATION_UPDATE_URL "https://dev4.failiem.lv/client/get_info.php" CACHE string "URL for updater" )
endif()

set( THEME_CLASS            "ownCloudTheme" )
set( APPLICATION_REV_DOMAIN "com.owncloud.desktopclient" )
set( WIN_SETUP_BITMAP_PATH  "${CMAKE_SOURCE_DIR}/admin/win/nsi" )

set( MAC_INSTALLER_BACKGROUND_FILE "${CMAKE_SOURCE_DIR}/admin/osx/installer-background.png" CACHE STRING "The MacOSX installer background image")

# set( THEME_INCLUDE          "${OEM_THEME_DIR}/mytheme.h" )
# set( APPLICATION_LICENSE    "${OEM_THEME_DIR}/license.txt )

option( WITH_CRASHREPORTER "Build crashreporter" OFF )
set( CRASHREPORTER_SUBMIT_URL "http://dev4.failiem.lv/files_fm_sync_crashes.php" CACHE string "URL for crash reporter" )
set( CRASHREPORTER_ICON ":/owncloud-icon.png" )
