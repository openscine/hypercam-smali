.class public Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubLoaderList"
.end annotation


# instance fields
.field private seen:Ljava/util/Map;

.field private theList:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->theList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->seen:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;Lorg/apache/xmlbeans/SchemaTypeLoader;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->add(Lorg/apache/xmlbeans/SchemaTypeLoader;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;)[Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->toArray()[Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p0

    return-object p0
.end method

.method private add(Lorg/apache/xmlbeans/SchemaTypeLoader;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->seen:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->theList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->seen:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method private toArray()[Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->theList:Ljava/util/List;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->access$400()[Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaTypeLoader;

    return-object p0
.end method
