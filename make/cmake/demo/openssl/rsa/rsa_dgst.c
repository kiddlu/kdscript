#include <string.h>
#include <openssl/rsa.h>
#include <openssl/pem.h>
#include <openssl/err.h>

RSA* getPrivateKey(char* in_szKeyPath)
{
    FILE    *fp = NULL; 
    char    szKeyPath[1024];
    RSA     *priRsa = NULL, *pubRsa = NULL, *pOut = NULL;

    memset(szKeyPath, 0 ,sizeof(szKeyPath));

    if(256 < strlen(in_szKeyPath))
        strncpy(szKeyPath, in_szKeyPath, 256);
    else
        strncpy(szKeyPath, in_szKeyPath, strlen(in_szKeyPath));

    printf("密钥文件路径[%s]", szKeyPath);

    /*  打开密钥文件 */
    if(NULL == (fp = fopen(szKeyPath, "rb")))
    {
        printf( "打开密钥文件[%s]出错", szKeyPath);
        return NULL;
    }
    /*  获取私密钥 */
    if(NULL == (priRsa = PEM_read_RSAPrivateKey(fp, &priRsa, NULL,NULL)))
    {
        printf( "读出私钥内容出错\n");
        fclose(fp);
        return NULL;
    }
    fclose(fp);

    printf("提取私钥\n");
    pOut = priRsa;
    return pOut;
}

RSA* getPublicKey(char* in_szKeyPath)
{
    FILE    *fp = NULL; 
    char    szKeyPath[1024];
    RSA     *priRsa = NULL, *pubRsa = NULL, *pOut = NULL;

    memset(szKeyPath, 0 ,sizeof(szKeyPath));

    if(256 < strlen(in_szKeyPath))
        strncpy(szKeyPath, in_szKeyPath, 256);
    else
        strncpy(szKeyPath, in_szKeyPath, strlen(in_szKeyPath));

    printf("密钥文件路径[%s]", szKeyPath);

    /*  打开密钥文件 */
    if(NULL == (fp = fopen(szKeyPath, "rb")))
    {
        printf( "打开密钥文件[%s]出错", szKeyPath);
        return NULL;
    }
    /*  获取公密钥 */
    if(NULL == (priRsa = PEM_read_RSA_PUBKEY(fp, &priRsa, NULL,NULL)))
    {
        printf("读出私钥内容出错\n");
        fclose(fp);
        return NULL;
    }
    fclose(fp);
    printf("提取公钥\n");
    pOut = priRsa;
    return pOut;
}

int main(void)
{
    int     flen,rsa_len, ienLen, iRet;
    RSA     *prsa = NULL;
    char    szEnData[]="orderId=01010500201502000004reqTime=20150205012727ext=20151120ext2=1";
    char    szTmp[10240], szTmp1[10240];

    if(NULL == (prsa = getPrivateKey("rsa_priv.pem")))
    {
        RSA_free(prsa);
        printf("获取私钥失败\n");
        return -1;
    }

//  RSA_print_fp(stdout, prsa, 11);
    flen = strlen(szEnData);
        printf("待签名数据:[%s]\n", szEnData);

    memset(szTmp, 0, sizeof(szTmp));
    memset(szTmp1, 0, sizeof(szTmp1));
    //  对待签名数据做SHA1摘要
    SHA1(szEnData, flen, szTmp);
    //使用私钥对SHA1摘要做签名
    ienLen = RSA_sign(NID_sha1, (unsigned char *)szTmp, 20, (unsigned char*)szTmp1, &iRet, prsa);
    if(ienLen != 1 )
    {
            printf("签名失败\n");
            RSA_free(prsa);
            return -1;
        }
        RSA_free(prsa);
        printf("签名成功\n");
    //签名串szTmp1二进制数据需要转成base64编码
    //mac=base64encode(szTmp1)这是伪码,生产MAC值，给对方去校验



    //验证签名
    //验证签名的是需要获取MAC值，明文签名数据,对“明文签名数据”做SHA1，获得摘要。在对MAC做basedecode(mac)，然后调用函数验证签名
    if(NULL == (prsa = getPublicKey("rsa_pub.pem")))
    {
        RSA_free(prsa);
        printf("获取私钥失败\n");
        return -1;
    }
    flen = strlen(szEnData);
    printf("待签名数据:[%s]\n", szEnData);//签名数据 和 mac 因该是由通信报文中获得，这里演示直接用使用同一变量

    memset(szTmp, 0, sizeof(szTmp));
    memset(szTmp1, 0, sizeof(szTmp1));
    //  对待签名数据做SHA1摘要
    SHA1(szEnData, flen, szTmp);

    ienLen = RSA_verify(NID_sha1, (unsigned char *)szTmp, 20, (unsigned char*)szTmp1, iRet, prsa);
    if(ienLen != 1 )
    {
            printf("签名不合法\n");
            RSA_free(prsa);
            return -1;
    }
    else
            printf("验签成功\n");
    RSA_free(prsa);
    return 0;
}
