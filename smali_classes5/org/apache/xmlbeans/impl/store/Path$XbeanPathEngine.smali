.class public final Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;
.super Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Path$PathEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XbeanPathEngine"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _cur:Lorg/apache/xmlbeans/impl/store/Cur;

.field private final _version:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->class$org$apache$xmlbeans$impl$store$Path:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Path"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->class$org$apache$xmlbeans$impl$store$Path:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/common/XPath;Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;-><init>()V

    .line 2
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_version:J

    .line 4
    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    .line 5
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->init(Lorg/apache/xmlbeans/impl/common/XPath;)V

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->start()I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->addToSelection()V

    .line 9
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->doAttrs(ILorg/apache/xmlbeans/impl/store/Cur;)V

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->release()V

    :cond_4
    return-void
.end method

.method private advance(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 2

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtEndOfLastPush()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->release()V

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->end()V

    .line 6
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isElem()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->element(Ljavax/xml/namespace/QName;)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->addToSelection(Lorg/apache/xmlbeans/impl/store/Cur;)V

    .line 10
    :cond_4
    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->doAttrs(ILorg/apache/xmlbeans/impl/store/Cur;)V

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 12
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->end()V

    .line 13
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    goto :goto_1

    .line 14
    :cond_6
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    .line 15
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainerOrFinish()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_7
    :goto_1
    return-void
.end method

.method private doAttrs(ILorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    .line 2
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    :cond_2
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;->attr(Ljavax/xml/namespace/QName;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->addToSelection(Lorg/apache/xmlbeans/impl/store/Cur;)V

    .line 5
    :cond_3
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :cond_4
    return-void
.end method


# virtual methods
.method public next(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_version:J

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string p1, "Document changed during select"

    invoke-direct {p0, p1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->selectionCount()I

    move-result v0

    .line 4
    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v1, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->advance(Lorg/apache/xmlbeans/impl/store/Cur;)V

    .line 6
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->selectionCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_0
    return-void
.end method
