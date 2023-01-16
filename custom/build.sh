pushd ../..
MBEDTLS_LIBS="$PWD/mbedtls/build/library/libmbedcrypto.a;$PWD/mbedtls/build/library/libmbedtls.a;$PWD/mbedtls/build/library/libmbedx509.a"
MBEDTLS_INCS=$PWD/mbedtls/include
popd

mkdir -p ../build
cd ../build
cmake .. -DLWS_WITH_MBEDTLS=1 \
-DLWS_MBEDTLS_LIBRARIES=$MBEDTLS_LIBS \
-DLWS_MBEDTLS_INCLUDE_DIRS=$MBEDTLS_INCS

make