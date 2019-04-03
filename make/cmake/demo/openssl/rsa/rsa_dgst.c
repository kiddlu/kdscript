//apt install libssl-dev
#include <string.h>
#include <openssl/rsa.h>
#include <openssl/pem.h>
#include <openssl/err.h>

#include "file.h"

#include <inttypes.h>
#include <sys/time.h>

RSA* get_private_key(char* path)
{
    FILE    *fp = NULL; 
    char    key_path[1024];
    RSA     *priv_key = NULL;

    memset(key_path, 0 ,sizeof(key_path));

    if(256 < strlen(path))
        strncpy(key_path, path, 256);
    else
        strncpy(key_path, path, strlen(path));

    if(NULL == (fp = fopen(key_path, "rb")))
    {
        printf( "open key error[%s]\n", key_path);
        return NULL;
    }

    if(NULL == (priv_key = PEM_read_RSAPrivateKey(fp, &priv_key, NULL,NULL)))
    {
        printf( "read key error\n");
        fclose(fp);
        return NULL;
    }
    fclose(fp);

    return priv_key;
}

RSA* get_public_key(char* path)
{
    FILE    *fp = NULL; 
    char    key_path[1024];
    RSA     *pub_key = NULL;

    memset(key_path, 0 ,sizeof(key_path));

    if(256 < strlen(path))
        strncpy(key_path, path, 256);
    else
        strncpy(key_path, path, strlen(path));

    if(NULL == (fp = fopen(key_path, "rb"))) {
        printf( "open key error[%s]\n", key_path);
        return NULL;
    }
    if(NULL == (pub_key = PEM_read_RSA_PUBKEY(fp, &pub_key, NULL,NULL))) {
        printf("read key error\n");
        fclose(fp);
        return NULL;
    }
    fclose(fp);
    return pub_key;
}

#define MD_SHA1_LEN       20
#define MD_SHA256_LEN     32
#define MAX_SIGNATURE_LEN 2048

int main(void)
{
    int     ret;
    int     sig_len;
    RSA     *rsa_content = NULL;

    char    sha_buf[MD_SHA1_LEN];
    char    signature[MAX_SIGNATURE_LEN];

    if( NULL == (rsa_content = get_private_key("rsa_priv.pem"))) {
        RSA_free(rsa_content);
        printf("get priv key error\n");
        return -1;
    }

    memset(sha_buf, 0, sizeof(sha_buf));
    memset(signature, 0, sizeof(signature));

    SHA1(file_buf, file_len, sha_buf);
    ret = RSA_sign(NID_sha1, (unsigned char *)sha_buf, MD_SHA1_LEN, (unsigned char*)signature, &sig_len, rsa_content);

    if(ret != 1 ) {
            printf("rsa sign error\n");
            RSA_free(rsa_content);
            return -1;
    }

    RSA_free(rsa_content);

    if(NULL == (rsa_content = get_public_key("rsa_pub.pem"))) {
        RSA_free(rsa_content);
        printf("get pub key error\n");
        return -1;
    }

    memset(sha_buf, 0, sizeof(sha_buf));

    SHA1(file_buf, file_len, sha_buf);

    ret = RSA_verify(NID_sha1, (unsigned char *)sha_buf, MD_SHA1_LEN, (unsigned char*)signature, sig_len, rsa_content);
    if(ret != 1 ) {
            printf("verify error\n");
            RSA_free(rsa_content);
            return -1;
    } else {
        printf("verify ok\n");
        RSA_free(rsa_content);
    }

    return 0;
}
