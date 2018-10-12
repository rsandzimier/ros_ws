#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/dlab/ros_ws/src/optoforce"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/dlab/ros_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/dlab/ros_ws/install/lib/python2.7/dist-packages:/home/dlab/ros_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dlab/ros_ws/build" \
    "/usr/bin/python" \
    "/home/dlab/ros_ws/src/optoforce/setup.py" \
    build --build-base "/home/dlab/ros_ws/build/optoforce" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/dlab/ros_ws/install" --install-scripts="/home/dlab/ros_ws/install/bin"
