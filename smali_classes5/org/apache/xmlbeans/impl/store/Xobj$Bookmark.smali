.class public Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlCursor$XmlMark;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Xobj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bookmark"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public _key:Ljava/lang/Object;

.field public _next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

.field public _pos:I

.field public _prev:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

.field public _value:Ljava/lang/Object;

.field public _xobj:Lorg/apache/xmlbeans/impl/store/Xobj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Xobj;->class$org$apache$xmlbeans$impl$store$Xobj:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Xobj"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Xobj;->class$org$apache$xmlbeans$impl$store$Xobj:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCursor()Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->newCursor(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to create a cursor on a bookmark that has been cleared or replaced."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isOnList(Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;)Z
    .locals 0

    :goto_0
    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public listInsert(Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;)Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;
    .locals 1

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 2
    iput-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_1

    .line 3
    :cond_2
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    .line 4
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    iput-object p0, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public listRemove(Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;)Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;
    .locals 4

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->isOnList(Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;)Z

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
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_2

    move-object p1, v2

    goto :goto_2

    :cond_2
    if-ne p1, p0, :cond_3

    .line 3
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_1

    .line 4
    :cond_3
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    iput-object v3, v1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    .line 5
    :goto_1
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    if-nez v3, :cond_4

    .line 6
    iput-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_2

    .line 7
    :cond_4
    iput-object v1, v3, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    .line 8
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    .line 9
    :goto_2
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    if-nez v0, :cond_6

    .line 10
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    :goto_3
    return-object p1
.end method

.method public moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V
    .locals 2

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->isOnList(Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eq v0, p1, :cond_2

    .line 3
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->listRemove(Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;)Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    .line 4
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->listInsert(Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;)Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    .line 5
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    .line 6
    :cond_2
    iput p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    return-void
.end method
