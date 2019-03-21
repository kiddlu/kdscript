int mbedtls_md_mem( const mbedtls_md_info_t *md_info, const unsigned char *ibuf, size_t ilen, unsigned char *output)
{
    int ret;
    FILE *f;
    size_t n;
    mbedtls_md_context_t ctx;
    unsigned char buf[1024];

    unsigned int loop = ilen / sizeof(buf);
    unsigned int ext = ilen % sizeof(buf);
    unsigned int i;

    if( md_info == NULL )
        return( MBEDTLS_ERR_MD_BAD_INPUT_DATA );

    mbedtls_md_init( &ctx );

    if( ( ret = mbedtls_md_setup( &ctx, md_info, 0 ) ) != 0 )
        goto cleanup;

    if( ( ret = md_info->starts_func( ctx.md_ctx ) ) != 0 )
        goto cleanup;

    for(i=0; i<loop; i++){
        memcpy(buf, ibuf + i*sizeof(buf), sizeof(buf));
        if( ( ret = md_info->update_func( ctx.md_ctx, buf, sizeof(buf))) != 0 )
            goto cleanup;
    }

    memcpy(buf, ibuf + i*sizeof(buf), ext);
    if(( ret = md_info->update_func( ctx.md_ctx, buf, ext)) != 0 )
        goto cleanup;

    ret = md_info->finish_func( ctx.md_ctx, output );

cleanup:
    mbedtls_platform_zeroize( buf, sizeof( buf ) );
    mbedtls_md_free( &ctx );

    return( ret );
}
