.class public Ld/c/b/m1/j8;
.super Ld/c/b/m1/q8;
.source "SourceFile"


# static fields
.field public static final c:Ld/c/b/m1/j8;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld/c/b/m1/j8;

    invoke-direct {v0}, Ld/c/b/m1/j8;-><init>()V

    sput-object v0, Ld/c/b/m1/j8;->c:Ld/c/b/m1/j8;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Ld/c/b/m1/q8;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public A(Ld/c/b/o0;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ld/c/b/o0;->B2()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public b(Ld/c/b/o0;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ld/c/b/o0;->B2()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method
