#!/system/bin/sh

until [ "$(dumpsys SurfaceFlinger 2>/dev/null | wc -l)" -gt 0 ]; do
    sleep 1
done

# Disable and force GPU rendering
service call SurfaceFlinger 1008 i32 1
