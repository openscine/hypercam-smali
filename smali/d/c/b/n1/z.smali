.class public final Ld/c/b/n1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/c/b/n1/o;


# static fields
.field public static final a:Ld/c/b/n1/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld/c/b/n1/z;

    invoke-direct {v0}, Ld/c/b/n1/z;-><init>()V

    sput-object v0, Ld/c/b/n1/z;->a:Ld/c/b/n1/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    :catch_0
    :cond_1
    :goto_0
    return p0
.end method
