.class public final Lorg/apache/xmlbeans/impl/store/Cur$Locations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Cur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Locations"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final NULL:I = -0x1

.field private static final _initialSize:I = 0x20


# instance fields
.field private _curs:[Lorg/apache/xmlbeans/impl/store/Cur;

.field private _free:I

.field private _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field private _naked:I

.field private _next:[I

.field private _nextN:[I

.field private _poses:[I

.field private _prev:[I

.field private _prevN:[I

.field private _xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$store$Cur:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Cur"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$store$Cur:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/16 p1, 0x20

    new-array v0, p1, [Lorg/apache/xmlbeans/impl/store/Xobj;

    .line 3
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    new-array v0, p1, [I

    .line 4
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    new-array v0, p1, [Lorg/apache/xmlbeans/impl/store/Cur;

    .line 5
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    new-array v0, p1, [I

    .line 6
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    new-array v0, p1, [I

    .line 7
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    new-array v0, p1, [I

    .line 8
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    new-array p1, p1, [I

    .line 9
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    const/16 p1, 0x1f

    move v0, p1

    :goto_0
    const/4 v1, -0x1

    if-ltz v0, :cond_2

    .line 10
    sget-boolean v2, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 11
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    const/4 v3, -0x2

    aput v3, v2, v0

    .line 12
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    add-int/lit8 v3, v0, 0x1

    aput v3, v2, v0

    .line 13
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    aput v1, v2, v0

    .line 14
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    aput v1, v2, v0

    .line 15
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    aput v1, v0, p1

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    .line 18
    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    return-void
.end method

.method private static insert(III[I[I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    .line 2
    sget-boolean p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->$assertionsDisabled:Z

    if-nez p0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_1
    :goto_0
    aput p2, p4, p2

    goto :goto_1

    :cond_2
    if-eq p1, v0, :cond_3

    .line 4
    aget v0, p4, p1

    aput v0, p4, p2

    .line 5
    aput p1, p3, p2

    .line 6
    aput p2, p4, p1

    if-ne p0, p1, :cond_6

    :goto_1
    move p0, p2

    goto :goto_3

    .line 7
    :cond_3
    aget p1, p4, p0

    aput p1, p4, p2

    .line 8
    sget-boolean p1, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->$assertionsDisabled:Z

    if-nez p1, :cond_5

    aget p1, p3, p2

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_5
    :goto_2
    aget p1, p4, p0

    aput p2, p3, p1

    .line 10
    aput p2, p4, p0

    :cond_6
    :goto_3
    return p0
.end method

.method private makeRoom()V
    .locals 12

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->$assertionsDisabled:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    array-length v2, v0

    .line 3
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    .line 4
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    .line 5
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    .line 6
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    .line 7
    iget-object v7, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    .line 8
    iget-object v8, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    mul-int/lit8 v9, v2, 0x2

    .line 9
    new-array v10, v9, [Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v10, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    .line 10
    new-array v11, v9, [I

    iput-object v11, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    .line 11
    new-array v11, v9, [Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v11, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    .line 12
    new-array v11, v9, [I

    iput-object v11, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    .line 13
    new-array v11, v9, [I

    iput-object v11, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    .line 14
    new-array v11, v9, [I

    iput-object v11, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    .line 15
    new-array v11, v9, [I

    iput-object v11, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    const/4 v11, 0x0

    .line 16
    invoke-static {v0, v11, v10, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    invoke-static {v3, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {v4, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    invoke-static {v5, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    invoke-static {v6, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    invoke-static {v7, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    invoke-static {v8, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, -0x1

    move v0, v9

    :goto_1
    if-lt v0, v2, :cond_2

    .line 23
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    add-int/lit8 v4, v0, 0x1

    aput v4, v3, v0

    .line 24
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    aput v1, v3, v0

    .line 25
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    aput v1, v3, v0

    .line 26
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    aput v1, v3, v0

    .line 27
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    const/4 v4, -0x2

    aput v4, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 28
    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    aput v1, v0, v9

    .line 29
    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    return-void
.end method

.method private static remove(II[I[I)I
    .locals 3

    .line 15
    aget v0, p3, p1

    const/4 v1, -0x1

    if-ne v0, p1, :cond_2

    .line 16
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    move p0, v1

    goto :goto_2

    :cond_2
    if-ne p0, p1, :cond_3

    .line 17
    aget p0, p2, p1

    goto :goto_1

    .line 18
    :cond_3
    aget v0, p3, p1

    aget v2, p2, p1

    aput v2, p2, v0

    .line 19
    :goto_1
    aget v0, p2, p1

    if-ne v0, v1, :cond_4

    .line 20
    aget v0, p3, p1

    aput v0, p3, p0

    goto :goto_2

    .line 21
    :cond_4
    aget v0, p2, p1

    aget v2, p3, p1

    aput v2, p3, v0

    .line 22
    aput v1, p2, p1

    .line 23
    :goto_2
    aput v1, p3, p1

    .line 24
    sget-boolean p3, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->$assertionsDisabled:Z

    if-nez p3, :cond_6

    aget p1, p2, p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    :goto_3
    return p0
.end method


# virtual methods
.method public allocate(Lorg/apache/xmlbeans/impl/store/Cur;)I
    .locals 5

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->makeRoom()V

    .line 4
    :cond_2
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    .line 5
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    aget v4, v3, v1

    iput v4, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    .line 6
    aput v2, v3, v1

    if-nez v0, :cond_4

    .line 7
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    aget v3, v3, v1

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    .line 8
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v3, v3, v1

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    :goto_2
    if-nez v0, :cond_8

    .line 9
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v3, v3, v1

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    :goto_3
    if-nez v0, :cond_a

    .line 10
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aget v0, v0, v1

    const/4 v3, -0x2

    if-ne v0, v3, :cond_9

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 11
    :cond_a
    :goto_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    aput-object v3, v0, v1

    .line 12
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    aput p1, v0, v1

    .line 13
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    invoke-static {p1, v2, v1, v0, v3}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->insert(III[I[I)I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    return v1
.end method

.method public insert(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    invoke-static {p1, p2, p3, v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->insert(III[I[I)I

    move-result p0

    return p0
.end method

.method public isAtEndOf(ILorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aget v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v1, v0, p1

    if-eqz v1, :cond_3

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v1, v0, p1

    if-nez v1, :cond_5

    .line 4
    iget-object v0, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object p0, p0, p1

    if-ne v0, p0, :cond_4

    iget p0, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return p0

    .line 5
    :cond_5
    aget-object p0, v0, p1

    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtEndOf(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0
.end method

.method public isSamePos(ILorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 2
    iget-object v0, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v1, v1, p1

    if-ne v0, v1, :cond_0

    iget p2, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aget p0, p0, p1

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 3
    :cond_1
    aget-object p0, v0, p1

    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isSamePos(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0
.end method

.method public moveTo(ILorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v0, v0, p1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aget p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    goto :goto_0

    .line 3
    :cond_0
    aget-object p0, v0, p1

    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    :goto_0
    return-void
.end method

.method public next(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    aget p0, p0, p1

    return p0
.end method

.method public notifyChange()V
    .locals 5

    .line 1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2
    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->$assertionsDisabled:Z

    const/4 v2, -0x2

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aget v1, v1, v0

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    invoke-static {v0, v0, v1, v3}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->remove(II[I[I)I

    move-result v1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    .line 4
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Locale;->getCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v3

    aput-object v3, v1, v0

    .line 5
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v1, v1, v0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aget v4, v4, v0

    invoke-virtual {v1, v3, v4}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    .line 6
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 7
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aput v2, v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public prev(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    aget p0, p0, p1

    return p0
.end method

.method public remove(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v1, v0, p2

    .line 2
    sget-boolean v2, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v3, v3, p2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 3
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v3, v3, p2

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz v1, :cond_7

    .line 4
    aget-object v0, v0, p2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    .line 5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aput-object v3, v0, p2

    if-nez v2, :cond_5

    .line 6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v0, v0, p2

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez v2, :cond_a

    .line 7
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aget v0, v0, p2

    if-ne v0, v4, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    if-nez v2, :cond_9

    .line 8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v0, v0, p2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aget v0, v0, p2

    if-eq v0, v4, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_9
    :goto_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aput-object v3, v0, p2

    .line 10
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aput v4, v0, p2

    .line 11
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    invoke-static {v0, p2, v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->remove(II[I[I)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    .line 12
    :cond_a
    :goto_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    invoke-static {p1, p2, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->remove(II[I[I)I

    move-result p1

    .line 13
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    aput v1, v0, p2

    .line 14
    iput p2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    return p1
.end method
