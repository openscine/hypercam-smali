.class public interface abstract annotation L쪢쪮쪬쫯쪬쪨쫯쪥쪤쪷쪨쪢쪤쫯쪂쪮쪯쪧쪨쪦쪂쪮쪯쪲쪵쪠쪯쪵$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L쪢쪮쪬쫯쪬쪨쫯쪥쪤쪷쪨쪢쪤쫯쪂쪮쪯쪧쪨쪦쪂쪮쪯쪲쪵쪠쪯쪵;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "a"
.end annotation


# static fields
.field public static final d2:Ljava/lang/String;

.field public static final e2:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\ua392\ua3cb\ua3d8\ua3d3\ua3d9\ua3d2\ua3cf\ua392\ua3d8\ua3c9\ua3de\ua392\ua3de\ua3dc\ua3d0\ua3d8\ua3cf\ua3dc"

    invoke-static {v0}, Ld/l/e/a/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, L쪢쪮쪬쫯쪬쪨쫯쪥쪤쪷쪨쪢쪤쫯쪂쪮쪯쪧쪨쪦쪂쪮쪯쪲쪵쪠쪯쪵$a;->d2:Ljava/lang/String;

    const-string v0, "\ua392\ua3d2\ua3d9\ua3d0\ua392\ua3d8\ua3c9\ua3de\ua392\ua3de\ua3dc\ua3d0\ua3d8\ua3cf\ua3dc"

    invoke-static {v0}, Ld/l/e/a/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, L쪢쪮쪬쫯쪬쪨쫯쪥쪤쪷쪨쪢쪤쫯쪂쪮쪯쪧쪨쪦쪂쪮쪯쪲쪵쪠쪯쪵$a;->e2:Ljava/lang/String;

    return-void
.end method
