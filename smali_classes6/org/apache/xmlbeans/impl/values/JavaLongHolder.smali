.class public abstract Lorg/apache/xmlbeans/impl/values/JavaLongHolder;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.source "SourceFile"


# static fields
.field private static final _max:Ljava/math/BigInteger;

.field private static final _min:Ljava/math/BigInteger;


# instance fields
.field private _value:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_max:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_min:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bigDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_value:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 4

    .line 1
    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getDecimalSize()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlObject;->compareTo(Ljava/lang/Object;)I

    move-result p0

    neg-int p0, p0

    return p0

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_value:J

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_value:J

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->longValue()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_2

    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-wide p0, p0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_value:J

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getDecimalSize()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_value:J

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->longValue()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public longValue()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_value:J

    return-wide v0
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    .line 1
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_LONG:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p0
.end method

.method public set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->set_BigInteger(Ljava/math/BigInteger;)V

    return-void
.end method

.method public set_BigInteger(Ljava/math/BigInteger;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_max:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_min:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_value:J

    return-void

    .line 3
    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw p0
.end method

.method public set_long(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_value:J

    return-void
.end method

.method public set_nil()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_value:J

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexLong(Ljava/lang/CharSequence;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->set_long(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "long"

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public value_hash_code()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/JavaLongHolder;->_value:J

    const/16 p0, 0x20

    shr-long v2, v0, p0

    const-wide/16 v4, 0x13

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    long-to-int p0, v2

    return p0
.end method
