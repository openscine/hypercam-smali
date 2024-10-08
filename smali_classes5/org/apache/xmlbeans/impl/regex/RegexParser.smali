.class public Lorg/apache/xmlbeans/impl/regex/RegexParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/regex/RegexParser$ReferencePosition;
    }
.end annotation


# static fields
.field public static final S_INBRACKETS:I = 0x1

.field public static final S_INXBRACKETS:I = 0x2

.field public static final S_NORMAL:I = 0x0

.field public static final T_BACKSOLIDUS:I = 0xa

.field public static final T_CARET:I = 0xb

.field public static final T_CHAR:I = 0x0

.field public static final T_COMMENT:I = 0x15

.field public static final T_CONDITION:I = 0x17

.field public static final T_DOLLAR:I = 0xc

.field public static final T_DOT:I = 0x8

.field public static final T_EOF:I = 0x1

.field public static final T_INDEPENDENT:I = 0x12

.field public static final T_LBRACKET:I = 0x9

.field public static final T_LOOKAHEAD:I = 0xe

.field public static final T_LOOKBEHIND:I = 0x10

.field public static final T_LPAREN:I = 0x6

.field public static final T_LPAREN2:I = 0xd

.field public static final T_MODIFIERS:I = 0x16

.field public static final T_NEGATIVELOOKAHEAD:I = 0xf

.field public static final T_NEGATIVELOOKBEHIND:I = 0x11

.field public static final T_OR:I = 0x2

.field public static final T_PLUS:I = 0x4

.field public static final T_POSIX_CHARCLASS_START:I = 0x14

.field public static final T_QUESTION:I = 0x5

.field public static final T_RPAREN:I = 0x7

.field public static final T_SET_OPERATIONS:I = 0x13

.field public static final T_STAR:I = 0x3

.field public static final T_XMLSCHEMA_CC_SUBTRACTION:I = 0x18


# instance fields
.field public chardata:I

.field public context:I

.field public hasBackReferences:Z

.field public nexttoken:I

.field public offset:I

.field public options:I

.field public parennumber:I

.field public references:Ljava/util/Vector;

.field public regex:Ljava/lang/String;

.field public regexlen:I

.field public resources:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->context:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parennumber:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->references:Ljava/util/Vector;

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->context:I

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parennumber:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->references:Ljava/util/Vector;

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method private static final hexChar(I)I
    .locals 3

    const/16 v0, 0x30

    const/4 v1, -0x1

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x66

    if-le p0, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x39

    if-gt p0, v2, :cond_2

    sub-int/2addr p0, v0

    return p0

    :cond_2
    const/16 v0, 0x41

    if-ge p0, v0, :cond_3

    return v1

    :cond_3
    const/16 v2, 0x46

    if-gt p0, v2, :cond_5

    :cond_4
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_5
    const/16 v0, 0x61

    if-ge p0, v0, :cond_4

    return v1
.end method

.method private final isSet(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->options:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public checkQuestion(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x3f

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public decodeEscaped()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1a

    .line 2
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v2, 0x41

    if-eq v0, v2, :cond_19

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_19

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_18

    const/16 v1, 0x72

    if-eq v0, v1, :cond_17

    const/16 v1, 0x78

    const v2, 0x10ffff

    const-string v3, "parser.descape.1"

    if-eq v0, v1, :cond_d

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_19

    const/16 v1, 0x65

    if-eq v0, v1, :cond_c

    const/16 v1, 0x66

    if-eq v0, v1, :cond_b

    packed-switch v0, :pswitch_data_0

    move v1, v0

    goto/16 :goto_2

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v0

    if-ltz v0, :cond_6

    .line 5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_5

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_4

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    .line 9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 10
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_3

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 12
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_2

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 14
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    if-gt v1, v2, :cond_0

    goto/16 :goto_2

    .line 15
    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descappe.4"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 16
    :cond_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 17
    :cond_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 18
    :cond_3
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 19
    :cond_4
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 20
    :cond_5
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 21
    :cond_6
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 22
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 23
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v0

    if-ltz v0, :cond_a

    .line 24
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 25
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_9

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_9

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    .line 26
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 27
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_8

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    .line 28
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 29
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_7

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_7

    goto/16 :goto_1

    .line 30
    :cond_7
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 31
    :cond_8
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 32
    :cond_9
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 33
    :cond_a
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :pswitch_2
    const/16 v1, 0x9

    goto/16 :goto_2

    :cond_b
    const/16 v1, 0xc

    goto/16 :goto_2

    :cond_c
    const/16 v1, 0x1b

    goto/16 :goto_2

    .line 34
    :cond_d
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 35
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    if-nez v0, :cond_16

    .line 36
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    move v1, v0

    .line 37
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 38
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    if-nez v0, :cond_12

    .line 39
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v0

    if-gez v0, :cond_10

    .line 40
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_f

    if-gt v1, v2, :cond_e

    goto :goto_2

    .line 41
    :cond_e
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.4"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 42
    :cond_f
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.3"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_10
    mul-int/lit8 v4, v1, 0x10

    if-gt v1, v4, :cond_11

    add-int v1, v4, v0

    goto :goto_0

    .line 43
    :cond_11
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.2"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 44
    :cond_12
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 45
    :cond_13
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v0

    if-ltz v0, :cond_15

    .line 46
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 47
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    if-nez v1, :cond_14

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hexChar(I)I

    move-result v1

    if-ltz v1, :cond_14

    :goto_1
    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    goto :goto_2

    .line 48
    :cond_14
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 49
    :cond_15
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 50
    :cond_16
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_17
    const/16 v1, 0xd

    :cond_18
    :goto_2
    return v1

    .line 51
    :cond_19
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x2

    const-string v1, "parser.descape.5"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 52
    :cond_1a
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.next.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/xmlbeans/impl/regex/ParseException;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->resources:Ljava/util/ResourceBundle;

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lorg/apache/xmlbeans/impl/regex/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getTokenForShorthand(I)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 6

    const/16 v0, 0x44

    const-string v1, "Nd"

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-eq p1, v0, :cond_a

    const/16 v0, 0x53

    const-string v4, "IsSpace"

    if-eq p1, v0, :cond_8

    const/16 v0, 0x57

    const-string v5, "IsWord"

    if-eq p1, v0, :cond_6

    const/16 v0, 0x64

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x73

    if-eq p1, v0, :cond_2

    const/16 v0, 0x77

    if-ne p1, v0, :cond_1

    .line 1
    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v5, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_wordchars:Lorg/apache/xmlbeans/impl/regex/Token;

    goto :goto_0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Internal Error: shorthands: \\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v4, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_spaces:Lorg/apache/xmlbeans/impl/regex/Token;

    goto :goto_0

    .line 4
    :cond_4
    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_0to9:Lorg/apache/xmlbeans/impl/regex/Token;

    goto :goto_0

    .line 5
    :cond_6
    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v5, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p0

    goto :goto_0

    :cond_7
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_not_wordchars:Lorg/apache/xmlbeans/impl/regex/Token;

    goto :goto_0

    .line 6
    :cond_8
    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v4, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p0

    goto :goto_0

    :cond_9
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_not_spaces:Lorg/apache/xmlbeans/impl/regex/Token;

    goto :goto_0

    .line 7
    :cond_a
    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p0

    goto :goto_0

    :cond_b
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_not_0to9:Lorg/apache/xmlbeans/impl/regex/Token;

    :goto_0
    return-object p0
.end method

.method public final next()V
    .locals 13

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    .line 3
    iput v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->nexttoken:I

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5
    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    .line 6
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->context:I

    const/16 v3, 0x3a

    const-string v4, "parser.next.1"

    const/16 v5, 0xa

    const/16 v6, 0x2d

    const/16 v7, 0x5c

    const/4 v8, 0x0

    const/16 v9, 0x5b

    if-ne v1, v2, :cond_7

    const/16 v1, 0x200

    if-eq v0, v6, :cond_6

    if-eq v0, v9, :cond_3

    if-eq v0, v7, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v0, v1, :cond_2

    .line 8
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v2

    .line 9
    invoke-virtual {p0, v4, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 10
    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_4

    .line 11
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const/16 v5, 0x14

    goto :goto_1

    .line 12
    :cond_4
    :goto_0
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v1, v3, :cond_5

    .line 13
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 14
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isLowSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    .line 16
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    :cond_5
    move v5, v8

    goto :goto_1

    .line 17
    :cond_6
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_5

    .line 18
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const/16 v5, 0x18

    .line 19
    :goto_1
    iput v5, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->nexttoken:I

    return-void

    :cond_7
    const/16 v1, 0x24

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_1d

    const/16 v12, 0x5e

    if-eq v0, v12, :cond_1c

    const/16 v12, 0x7c

    if-eq v0, v12, :cond_1b

    if-eq v0, v9, :cond_1a

    if-eq v0, v7, :cond_18

    packed-switch v0, :pswitch_data_0

    move v5, v8

    goto/16 :goto_3

    :pswitch_0
    const/4 v5, 0x4

    goto/16 :goto_3

    :pswitch_1
    move v5, v11

    goto/16 :goto_3

    :pswitch_2
    const/4 v5, 0x7

    goto/16 :goto_3

    :pswitch_3
    const/4 v5, 0x6

    .line 20
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-lt v0, v4, :cond_8

    goto/16 :goto_3

    .line 21
    :cond_8
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_9

    goto/16 :goto_3

    .line 22
    :cond_9
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    const-string v4, "parser.next.2"

    if-ge v0, v1, :cond_17

    .line 23
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_16

    const/16 v5, 0x23

    if-eq v0, v5, :cond_13

    if-eq v0, v3, :cond_12

    if-eq v0, v9, :cond_11

    packed-switch v0, :pswitch_data_1

    if-eq v0, v6, :cond_d

    const/16 v1, 0x61

    if-gt v1, v0, :cond_a

    const/16 v1, 0x7a

    if-le v0, v1, :cond_d

    :cond_a
    const/16 v1, 0x41

    if-gt v1, v0, :cond_b

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_b

    goto :goto_2

    :cond_b
    const/16 v1, 0x28

    if-ne v0, v1, :cond_c

    const/16 v5, 0x17

    goto/16 :goto_3

    .line 24
    :cond_c
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v0, v10

    invoke-virtual {p0, v4, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 25
    :cond_d
    :goto_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const/16 v5, 0x16

    goto/16 :goto_3

    :pswitch_4
    const/16 v5, 0x12

    goto/16 :goto_3

    :pswitch_5
    const/16 v5, 0xe

    goto/16 :goto_3

    .line 26
    :pswitch_6
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v0, v2, :cond_10

    .line 27
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_e

    const/16 v5, 0x10

    goto/16 :goto_3

    :cond_e
    if-ne v0, v1, :cond_f

    const/16 v5, 0x11

    goto/16 :goto_3

    .line 28
    :cond_f
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v0, v11

    const-string v1, "parser.next.3"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_10
    sub-int/2addr v0, v11

    .line 29
    invoke-virtual {p0, v4, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_11
    const/16 v5, 0x13

    goto :goto_3

    :cond_12
    const/16 v5, 0xd

    goto :goto_3

    .line 30
    :cond_13
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    const/16 v4, 0x29

    if-ge v1, v3, :cond_14

    .line 31
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_13

    :cond_14
    if-ne v0, v4, :cond_15

    const/16 v5, 0x15

    goto :goto_3

    .line 32
    :cond_15
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v0, v2

    const-string v1, "parser.next.4"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_16
    const/16 v5, 0xf

    goto :goto_3

    :cond_17
    sub-int/2addr v0, v2

    .line 33
    invoke-virtual {p0, v4, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 34
    :cond_18
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v0, v1, :cond_19

    .line 35
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    goto :goto_3

    :cond_19
    sub-int/2addr v0, v2

    .line 36
    invoke-virtual {p0, v4, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_1a
    const/16 v5, 0x9

    goto :goto_3

    :cond_1b
    move v5, v10

    goto :goto_3

    :cond_1c
    const/16 v5, 0xb

    goto :goto_3

    :cond_1d
    const/4 v5, 0x5

    goto :goto_3

    :cond_1e
    const/16 v5, 0x8

    goto :goto_3

    :cond_1f
    const/16 v5, 0xc

    .line 37
    :goto_3
    iput v5, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->nexttoken:I

    return-void

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized parse(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->options:I

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    .line 3
    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->setContext(I)V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parennumber:I

    .line 5
    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hasBackReferences:Z

    .line 6
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    const/16 p1, 0x10

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->stripExtendedComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    .line 9
    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    .line 10
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 11
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p1

    .line 12
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ne v0, v1, :cond_4

    .line 13
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->references:Ljava/util/Vector;

    if-eqz v0, :cond_3

    .line 14
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 15
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/regex/RegexParser$ReferencePosition;

    .line 16
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parennumber:I

    iget v2, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser$ReferencePosition;->refNumber:I

    if-le v1, v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "parser.parse.2"

    .line 17
    iget p2, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser$ReferencePosition;->position:I

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p1

    throw p1

    .line 18
    :cond_2
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_3
    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_1
    const-string p1, "parser.parse.1"

    .line 20
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public parseAtom()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    const-string v1, "parser.atom.4"

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    const/4 v3, 0x6

    if-eq v0, v3, :cond_e

    const/16 v3, 0xd

    if-eq v0, v3, :cond_d

    const/16 v3, 0x12

    if-eq v0, v3, :cond_c

    const/16 v3, 0x13

    if-eq v0, v3, :cond_b

    const/16 v3, 0x16

    if-eq v0, v3, :cond_a

    const/16 v3, 0x17

    if-eq v0, v3, :cond_9

    packed-switch v0, :pswitch_data_0

    .line 2
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 3
    :pswitch_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v1, 0x43

    if-eq v0, v1, :cond_8

    const/16 v1, 0x44

    if-eq v0, v1, :cond_7

    const/16 v1, 0x49

    if-eq v0, v1, :cond_6

    const/16 v1, 0x50

    if-eq v0, v1, :cond_4

    const/16 v1, 0x53

    if-eq v0, v1, :cond_7

    const/16 v1, 0x69

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x70

    if-eq v0, v1, :cond_4

    const/16 v1, 0x57

    if-eq v0, v1, :cond_7

    const/16 v1, 0x58

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 4
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createChar(I)Lorg/apache/xmlbeans/impl/regex/Token$CharToken;

    move-result-object v0

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_g()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_c()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBackreference()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_X()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->decodeEscaped()I

    move-result v0

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_2

    .line 10
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createChar(I)Lorg/apache/xmlbeans/impl/regex/Token$CharToken;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/regex/Token$StringToken;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_i()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 13
    :cond_4
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    .line 14
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_pP(I)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    goto/16 :goto_1

    :cond_5
    const-string v0, "parser.atom.5"

    .line 16
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 17
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_I()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 18
    :cond_7
    :pswitch_5
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->getTokenForShorthand(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v0

    .line 20
    :cond_8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_C()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_6
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseCharacterClass(Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 23
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_dot:Lorg/apache/xmlbeans/impl/regex/Token;

    goto :goto_1

    .line 24
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processCondition()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 25
    :cond_a
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processModifiers()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 26
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseSetOperations()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p0

    return-object p0

    .line 27
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processIndependent()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 28
    :cond_d
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processParen2()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 29
    :cond_e
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processParen()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 30
    :cond_f
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v3, 0x5d

    if-eq v0, v3, :cond_11

    const/16 v3, 0x7b

    if-eq v0, v3, :cond_11

    const/16 v3, 0x7d

    if-eq v0, v3, :cond_11

    .line 31
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createChar(I)Lorg/apache/xmlbeans/impl/regex/Token$CharToken;

    move-result-object v0

    .line 32
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    .line 33
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 34
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_10

    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isLowSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v0, 0x2

    new-array v0, v0, [C

    int-to-char v1, v1

    const/4 v3, 0x0

    aput-char v1, v0, v3

    .line 35
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    int-to-char v1, v1

    aput-char v1, v0, v2

    .line 36
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/Token;->createString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/regex/Token$StringToken;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/regex/Token;->createParen(Lorg/apache/xmlbeans/impl/regex/Token;I)Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    :cond_10
    :goto_1
    return-object v0

    .line 38
    :cond_11
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public parseCharacterClass(Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->setContext(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v2

    const/16 v3, 0x5e

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_1

    iget v2, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createNRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v5

    const v2, 0x10ffff

    .line 7
    invoke-virtual {v5, v4, v2}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    .line 8
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v2

    :goto_0
    move v6, v1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v2

    move v6, v4

    :goto_1
    move v7, v1

    .line 10
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v8

    const-string v9, "parser.cc.2"

    if-eq v8, v1, :cond_14

    const/16 v10, 0x5d

    if-nez v8, :cond_2

    .line 11
    iget v11, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    if-ne v11, v10, :cond_2

    if-nez v7, :cond_2

    goto/16 :goto_9

    .line 12
    :cond_2
    iget v7, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v11, 0xa

    if-ne v8, v11, :cond_7

    const/16 v8, 0x43

    if-eq v7, v8, :cond_6

    const/16 v8, 0x44

    if-eq v7, v8, :cond_5

    const/16 v8, 0x49

    if-eq v7, v8, :cond_6

    const/16 v8, 0x50

    if-eq v7, v8, :cond_3

    const/16 v8, 0x53

    if-eq v7, v8, :cond_5

    const/16 v8, 0x57

    if-eq v7, v8, :cond_5

    const/16 v8, 0x69

    if-eq v7, v8, :cond_6

    const/16 v8, 0x70

    if-eq v7, v8, :cond_3

    const/16 v8, 0x73

    if-eq v7, v8, :cond_5

    const/16 v8, 0x77

    if-eq v7, v8, :cond_5

    const/16 v8, 0x63

    if-eq v7, v8, :cond_6

    const/16 v8, 0x64

    if-eq v7, v8, :cond_5

    .line 13
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->decodeEscaped()I

    move-result v7

    goto/16 :goto_5

    .line 14
    :cond_3
    iget v8, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    .line 15
    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_pP(I)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 16
    invoke-virtual {v2, v12}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    goto :goto_3

    :cond_4
    const-string v1, "parser.atom.5"

    .line 17
    invoke-virtual {v0, v1, v8}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0

    .line 18
    :cond_5
    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->getTokenForShorthand(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    :goto_3
    move v8, v1

    goto/16 :goto_6

    .line 19
    :cond_6
    invoke-virtual {v0, v2, v7}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processCIinCharacterClass(Lorg/apache/xmlbeans/impl/regex/RangeToken;I)I

    move-result v7

    if-gez v7, :cond_c

    goto :goto_3

    :cond_7
    const/16 v12, 0x14

    if-ne v8, v12, :cond_c

    .line 20
    iget-object v8, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    const/16 v12, 0x3a

    iget v13, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const-string v12, "parser.cc.1"

    if-ltz v8, :cond_b

    .line 21
    iget-object v13, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    iget v14, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v3, :cond_8

    .line 22
    iget v13, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/2addr v13, v1

    iput v13, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    move v13, v4

    goto :goto_4

    :cond_8
    move v13, v1

    .line 23
    :goto_4
    iget-object v14, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    iget v15, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v14, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x200

    .line 24
    invoke-direct {v0, v15}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->isSet(I)Z

    move-result v15

    invoke-static {v14, v13, v15}, Lorg/apache/xmlbeans/impl/regex/Token;->getRange(Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 25
    invoke-virtual {v2, v13}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    add-int/lit8 v13, v8, 0x1

    .line 26
    iget v14, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v13, v14, :cond_9

    iget-object v14, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v10, :cond_9

    add-int/lit8 v8, v8, 0x2

    .line 27
    iput v8, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    goto :goto_3

    .line 28
    :cond_9
    invoke-virtual {v0, v12, v8}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0

    .line 29
    :cond_a
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v2, "parser.cc.3"

    invoke-virtual {v0, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0

    .line 30
    :cond_b
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v0, v12, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_5
    move v8, v4

    .line 31
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    if-nez v8, :cond_12

    .line 32
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v8

    if-nez v8, :cond_11

    iget v8, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v12, 0x2d

    if-eq v8, v12, :cond_d

    goto :goto_7

    .line 33
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v8

    if-eq v8, v1, :cond_10

    if-nez v8, :cond_e

    .line 35
    iget v9, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    if-ne v9, v10, :cond_e

    .line 36
    invoke-virtual {v2, v7, v7}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    .line 37
    invoke-virtual {v2, v12, v12}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    goto :goto_8

    .line 38
    :cond_e
    iget v9, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    if-ne v8, v11, :cond_f

    .line 39
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->decodeEscaped()I

    move-result v9

    .line 40
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 41
    invoke-virtual {v2, v7, v9}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    goto :goto_8

    .line 42
    :cond_10
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v0, v9, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0

    .line 43
    :cond_11
    :goto_7
    invoke-virtual {v2, v7, v7}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    :cond_12
    :goto_8
    const/16 v7, 0x400

    .line 44
    invoke-direct {v0, v7}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v7

    if-nez v7, :cond_13

    iget v7, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_13

    .line 45
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    :cond_13
    move v7, v4

    goto/16 :goto_2

    .line 46
    :cond_14
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v3

    if-eq v3, v1, :cond_16

    if-nez p1, :cond_15

    if-eqz v6, :cond_15

    .line 47
    invoke-virtual {v5, v2}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->subtractRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    move-object v2, v5

    .line 48
    :cond_15
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    .line 49
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    .line 50
    invoke-virtual {v0, v4}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->setContext(I)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v2

    .line 52
    :cond_16
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v0, v9, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method public parseFactor()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 3
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createEmpty()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processNegativelookbehind()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processLookbehind()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processNegativelookahead()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processLookahead()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processDollar()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processCaret()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_8
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x62

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_B()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_A()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_z()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 14
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_b()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_Z()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 16
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_gt()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 17
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processBacksolidus_lt()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseAtom()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    goto/16 :goto_6

    .line 20
    :cond_7
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processQuestion(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 21
    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processPlus(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 22
    :cond_9
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->processStar(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0

    .line 23
    :cond_a
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_18

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v1, v2, :cond_18

    .line 24
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_17

    const/16 v4, 0x39

    if-gt v1, v4, :cond_17

    add-int/lit8 v5, v1, -0x30

    .line 25
    :goto_1
    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    const-string v7, "parser.quantifier.5"

    if-ge v3, v6, :cond_d

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_c

    if-gt v1, v4, :cond_c

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v1

    sub-int/2addr v5, v2

    if-ltz v5, :cond_b

    move v3, v6

    goto :goto_1

    .line 26
    :cond_b
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {p0, v7, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_c
    move v3, v6

    :cond_d
    const/16 v6, 0x2c

    if-ne v1, v6, :cond_14

    .line 27
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v3, v1, :cond_13

    .line 28
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_12

    if-gt v1, v4, :cond_12

    add-int/lit8 v3, v1, -0x30

    .line 29
    :goto_2
    iget v8, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v6, v8, :cond_10

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_f

    if-gt v1, v4, :cond_f

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    if-ltz v3, :cond_e

    move v6, v8

    goto :goto_2

    .line 30
    :cond_e
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {p0, v7, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_f
    move v6, v8

    :cond_10
    if-gt v5, v3, :cond_11

    goto :goto_3

    .line 31
    :cond_11
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.quantifier.4"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_12
    const/4 v3, -0x1

    :goto_3
    move v2, v3

    move v3, v6

    goto :goto_4

    .line 32
    :cond_13
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.quantifier.3"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_14
    move v2, v5

    :goto_4
    const/16 v4, 0x7d

    if-ne v1, v4, :cond_16

    .line 33
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->checkQuestion(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 34
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createNGClosure(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    .line 35
    iput v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    goto :goto_5

    .line 36
    :cond_15
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createClosure(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;

    move-result-object v0

    .line 37
    iput v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    .line 38
    :goto_5
    invoke-virtual {v0, v5}, Lorg/apache/xmlbeans/impl/regex/Token;->setMin(I)V

    .line 39
    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->setMax(I)V

    .line 40
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    goto :goto_6

    .line 41
    :cond_16
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.quantifier.2"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 42
    :cond_17
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.quantifier.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_18
    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseTerm()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createUnion()Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Token;->addChild(Lorg/apache/xmlbeans/impl/regex/Token;)V

    move-object v0, v1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseTerm()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->addChild(Lorg/apache/xmlbeans/impl/regex/Token;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public parseSetOperations()Lorg/apache/xmlbeans/impl/regex/RangeToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseCharacterClass(Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_7

    .line 3
    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v4, 0x26

    const/16 v5, 0x2d

    const/4 v6, 0x4

    if-nez v2, :cond_0

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_1

    :cond_0
    if-ne v2, v6, :cond_6

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_5

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseCharacterClass(Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v7

    if-ne v2, v6, :cond_2

    .line 7
    invoke-virtual {v1, v7}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    goto :goto_0

    :cond_2
    if-ne v3, v5, :cond_3

    .line 8
    invoke-virtual {v1, v7}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->subtractRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    goto :goto_0

    :cond_3
    if-ne v3, v4, :cond_4

    .line 9
    invoke-virtual {v1, v7}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->intersectRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    goto :goto_0

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ASSERT"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_5
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.ope.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 12
    :cond_6
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.ope.2"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 13
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v1
.end method

.method public parseTerm()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseFactor()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v5

    if-eq v5, v1, :cond_2

    if-eq v5, v2, :cond_2

    if-eq v5, v3, :cond_2

    if-nez v4, :cond_1

    .line 4
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createConcat()Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v0}, Lorg/apache/xmlbeans/impl/regex/Token;->addChild(Lorg/apache/xmlbeans/impl/regex/Token;)V

    move-object v0, v4

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseFactor()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xmlbeans/impl/regex/Token;->addChild(Lorg/apache/xmlbeans/impl/regex/Token;)V

    goto :goto_0

    :cond_2
    return-object v0

    .line 7
    :cond_3
    :goto_1
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createEmpty()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0
.end method

.method public processBackreference()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    add-int/lit8 v0, v0, -0x30

    .line 2
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createBackReference(I)Lorg/apache/xmlbeans/impl/regex/Token$StringToken;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hasBackReferences:Z

    .line 4
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->references:Ljava/util/Vector;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->references:Ljava/util/Vector;

    .line 5
    :cond_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->references:Ljava/util/Vector;

    new-instance v3, Lorg/apache/xmlbeans/impl/regex/RegexParser$ReferencePosition;

    iget v4, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v3, v0, v4}, Lorg/apache/xmlbeans/impl/regex/RegexParser$ReferencePosition;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v1
.end method

.method public processBacksolidus_A()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_stringbeginning:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p0
.end method

.method public processBacksolidus_B()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_not_wordedge:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p0
.end method

.method public processBacksolidus_C()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public processBacksolidus_I()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.process.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public processBacksolidus_X()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->getCombiningCharacterSequence()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0
.end method

.method public processBacksolidus_Z()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_stringend2:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p0
.end method

.method public processBacksolidus_b()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_wordedge:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p0
.end method

.method public processBacksolidus_c()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xffe0

    and-int/2addr v1, v0

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    sub-int/2addr v0, v2

    .line 3
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createChar(I)Lorg/apache/xmlbeans/impl/regex/Token$CharToken;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.atom.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public processBacksolidus_g()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->getGraphemePattern()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    return-object p0
.end method

.method public processBacksolidus_gt()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_wordend:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p0
.end method

.method public processBacksolidus_i()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    const/16 v0, 0x69

    .line 1
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createChar(I)Lorg/apache/xmlbeans/impl/regex/Token$CharToken;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v0
.end method

.method public processBacksolidus_lt()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_wordbeginning:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p0
.end method

.method public processBacksolidus_pP(I)Lorg/apache/xmlbeans/impl/regex/RangeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->chardata:I

    const/16 v2, 0x7b

    if-ne v0, v2, :cond_2

    const/16 v0, 0x70

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    .line 4
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_1

    .line 5
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    .line 6
    iput v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const/16 v1, 0x200

    .line 7
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->isSet(I)Z

    move-result p0

    invoke-static {v0, p1, p0}, Lorg/apache/xmlbeans/impl/regex/Token;->getRange(Ljava/lang/String;ZZ)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    iget p1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v0, "parser.atom.3"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 9
    :cond_2
    iget p1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr p1, v1

    const-string v0, "parser.atom.2"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public processBacksolidus_z()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_stringend:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p0
.end method

.method public processCIinCharacterClass(Lorg/apache/xmlbeans/impl/regex/RangeToken;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->decodeEscaped()I

    move-result p0

    return p0
.end method

.method public processCaret()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_linebeginning:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p0
.end method

.method public processCondition()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v1, v2, :cond_9

    const/4 v1, -0x1

    .line 2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x31

    const/4 v3, 0x7

    const/4 v4, 0x0

    const-string v5, "parser.factor.1"

    const/4 v6, 0x1

    if-gt v2, v0, :cond_2

    const/16 v2, 0x39

    if-gt v0, v2, :cond_2

    add-int/lit8 v1, v0, -0x30

    .line 3
    iput-boolean v6, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hasBackReferences:Z

    .line 4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->references:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->references:Ljava/util/Vector;

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->references:Ljava/util/Vector;

    new-instance v2, Lorg/apache/xmlbeans/impl/regex/RegexParser$ReferencePosition;

    iget v7, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-direct {v2, v1, v7}, Lorg/apache/xmlbeans/impl/regex/RegexParser$ReferencePosition;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 6
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    .line 7
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_1

    .line 8
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    move-object v0, v4

    goto :goto_0

    .line 9
    :cond_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    invoke-virtual {p0, v5, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_2
    const/16 v2, 0x3f

    if-ne v0, v2, :cond_3

    .line 10
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v0, v6

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    .line 11
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 12
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseFactor()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    .line 13
    iget v2, v0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/16 v7, 0x8

    if-eq v2, v7, :cond_4

    packed-switch v2, :pswitch_data_0

    .line 14
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.factor.5"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 15
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 16
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 17
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v2

    .line 18
    iget v7, v2, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 19
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/Token;->size()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 20
    invoke-virtual {v2, v6}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v4

    const/4 v7, 0x0

    .line 21
    invoke-virtual {v2, v7}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v2

    goto :goto_1

    .line 22
    :cond_5
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.factor.6"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 23
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v7

    if-ne v7, v3, :cond_7

    .line 24
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 25
    invoke-static {v1, v0, v2, v4}, Lorg/apache/xmlbeans/impl/regex/Token;->createCondition(ILorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;

    move-result-object p0

    return-object p0

    .line 26
    :cond_7
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v0, v6

    invoke-virtual {p0, v5, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    .line 27
    :cond_8
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    sub-int/2addr v0, v6

    invoke-virtual {p0, v5, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_9
    const-string v1, "parser.factor.4"

    .line 28
    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processDollar()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    sget-object p0, Lorg/apache/xmlbeans/impl/regex/Token;->token_lineend:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p0
.end method

.method public processIndependent()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createLook(ILorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v0

    .line 5
    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public processLookahead()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createLook(ILorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v0

    .line 5
    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public processLookbehind()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createLook(ILorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v0

    .line 5
    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public processModifiers()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    .line 1
    :goto_0
    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->getOptionValue(I)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    or-int/2addr v2, v3

    .line 4
    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    const-string v5, "parser.factor.2"

    if-ge v3, v4, :cond_9

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 6
    iput v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    .line 7
    :goto_2
    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_3

    .line 8
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 9
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->getOptionValue(I)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    or-int/2addr v0, v3

    .line 10
    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    goto :goto_2

    .line 11
    :cond_3
    :goto_3
    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v5, v3}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_4
    const/16 v3, 0x3a

    if-ne v1, v3, :cond_7

    .line 12
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    .line 13
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 14
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createModifierGroup(Lorg/apache/xmlbeans/impl/regex/Token;II)Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    .line 16
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    goto :goto_5

    .line 17
    :cond_6
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_7
    const/16 v3, 0x29

    if-ne v1, v3, :cond_8

    .line 18
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    .line 19
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 20
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    invoke-static {p0, v2, v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createModifierGroup(Lorg/apache/xmlbeans/impl/regex/Token;II)Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;

    move-result-object v0

    :goto_5
    return-object v0

    .line 21
    :cond_8
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    const-string v1, "parser.factor.3"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_9
    add-int/lit8 v3, v3, -0x1

    .line 22
    invoke-virtual {p0, v5, v3}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public processNegativelookahead()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createLook(ILorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v0

    .line 5
    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public processNegativelookbehind()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createLook(ILorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v0

    .line 5
    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public processParen()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parennumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parennumber:I

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Token;->createParen(Lorg/apache/xmlbeans/impl/regex/Token;I)Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v0

    .line 6
    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public processParen2()Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parseRegex()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/regex/Token;->createParen(Lorg/apache/xmlbeans/impl/regex/Token;I)Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    return-object v0

    .line 5
    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->offset:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->ex(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public processPlus(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 4
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->createNGClosure(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/regex/Token;->createConcat(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->createClosure(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/regex/Token;->createConcat(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;

    move-result-object p0

    return-object p0
.end method

.method public processQuestion(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createUnion()Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 5
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createEmpty()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/regex/Token;->addChild(Lorg/apache/xmlbeans/impl/regex/Token;)V

    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->addChild(Lorg/apache/xmlbeans/impl/regex/Token;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->addChild(Lorg/apache/xmlbeans/impl/regex/Token;)V

    .line 8
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createEmpty()Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/regex/Token;->addChild(Lorg/apache/xmlbeans/impl/regex/Token;)V

    :goto_0
    return-object v0
.end method

.method public processStar(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->next()V

    .line 4
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->createNGClosure(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->createClosure(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;

    move-result-object p0

    return-object p0
.end method

.method public final read()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->nexttoken:I

    return p0
.end method

.method public final setContext(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->context:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 2

    :try_start_0
    const-string v0, "org.apache.xmlbeans.impl.regex.message"

    .line 1
    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegexParser;->resources:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Installation Problem???  Couldn\'t load messages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/util/MissingResourceException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
