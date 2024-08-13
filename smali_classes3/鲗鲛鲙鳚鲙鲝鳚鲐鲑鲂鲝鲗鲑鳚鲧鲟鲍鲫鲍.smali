.class public L鲗鲛鲙鳚鲙鲝鳚鲐鲑鲂鲝鲗鲑鳚鲧鲟鲍鲫鲍;
.super L㢴㢸㢺㣹㢺㢾㣹㢳㢲㢡㢾㢴㢲㣹㢄㢼㢮;
.source "SourceFile"


# annotations
.annotation build Ld/l/e/a/a;
.end annotation

.annotation build Ld/l/e/a/b;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, L㢴㢸㢺㣹㢺㢾㣹㢳㢲㢡㢾㢴㢲㣹㢄㢼㢮;-><init>()V

    return-void
.end method


# virtual methods
.method public D5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public d()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\ua3ef\ua3d8\ua3d9\ua3d0\ua3d4"

    .line 2
    invoke-static {v2}, Ld/l/e/a/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\ua38c\ua38f\ua3ef"

    invoke-static {v2}, Ld/l/e/a/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3
    invoke-virtual {p0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method
