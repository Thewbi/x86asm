// Generated from masm\fullMASMLexer.g4 by ANTLR 4.9.1
package masm;
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class fullMASMLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		LINE_COMMENT=1, COMMENT=2, BLOCK_COMMENT=3, ASTERISK=4, AND=5, EQ=6, NE=7, 
		LT=8, LE=9, GT=10, GE=11, OR=12, XOR=13, BIN_NUMERIC=14, DEC_NUMERIC=15, 
		HEX_NUMERIC=16, BYTE=17, COLON=18, COMMA=19, DOT=20, DOT_386=21, DOT_386P=22, 
		DOT_486=23, DOT_486P=24, DOT_586=25, DOT_586P=26, DOT_686=27, DOT_686P=28, 
		DOT_387=29, DOT_STACK=30, EQU=31, LPAREN=32, RPAREN=33, PLUS=34, SLASH=35, 
		SHL=36, SHR=37, INCLUDE=38, MINUS=39, MOD=40, NOT=41, SUBTITLE=42, SUBTTL=43, 
		TITLE=44, IDENTIFIER=45, WS=46, STRING_LITERAL=47, UNTERMINATED_STRING_LITERAL=48, 
		NEWLINE=49, TM_NEWLINE=50, TM_EOL=51, TM_SPACE=52, TM_TAB=53, TM_DATA=54;
	public static final int
		TITLEMODE=1;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE", "TITLEMODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"LINE_COMMENT", "COMMENT", "BLOCK_COMMENT", "A", "B", "C", "D", "E", 
			"F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", 
			"T", "U", "V", "W", "X", "Y", "Z", "ASTERISK", "AND", "EQ", "NE", "LT", 
			"LE", "GT", "GE", "OR", "XOR", "BIN_NUMERIC", "DEC_NUMERIC", "HEX_NUMERIC", 
			"BYTE", "COLON", "COMMA", "DOT", "DOT_386", "DOT_386P", "DOT_486", "DOT_486P", 
			"DOT_586", "DOT_586P", "DOT_686", "DOT_686P", "DOT_387", "DOT_STACK", 
			"EQU", "LPAREN", "RPAREN", "PLUS", "SLASH", "SHL", "SHR", "INCLUDE", 
			"MINUS", "MOD", "NOT", "SUBTITLE", "SUBTTL", "TITLE", "IDENTIFIER", "WS", 
			"STRING_LITERAL", "UNTERMINATED_STRING_LITERAL", "NEWLINE", "TM_NEWLINE", 
			"TM_EOL", "TM_SPACE", "TM_TAB", "TM_DATA"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, null, null, null, "'*'", null, null, null, null, null, null, null, 
			null, null, null, null, null, null, "':'", "','", "'.'", null, null, 
			null, null, null, null, null, null, null, null, null, "'('", "')'", "'+'", 
			"'/'", null, null, null, "'-'", null, null, null, null, null, null, null, 
			null, null, null, null, null, "' '"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "LINE_COMMENT", "COMMENT", "BLOCK_COMMENT", "ASTERISK", "AND", 
			"EQ", "NE", "LT", "LE", "GT", "GE", "OR", "XOR", "BIN_NUMERIC", "DEC_NUMERIC", 
			"HEX_NUMERIC", "BYTE", "COLON", "COMMA", "DOT", "DOT_386", "DOT_386P", 
			"DOT_486", "DOT_486P", "DOT_586", "DOT_586P", "DOT_686", "DOT_686P", 
			"DOT_387", "DOT_STACK", "EQU", "LPAREN", "RPAREN", "PLUS", "SLASH", "SHL", 
			"SHR", "INCLUDE", "MINUS", "MOD", "NOT", "SUBTITLE", "SUBTTL", "TITLE", 
			"IDENTIFIER", "WS", "STRING_LITERAL", "UNTERMINATED_STRING_LITERAL", 
			"NEWLINE", "TM_NEWLINE", "TM_EOL", "TM_SPACE", "TM_TAB", "TM_DATA"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public fullMASMLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "fullMASMLexer.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\28\u0209\b\1\b\1\4"+
		"\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n"+
		"\4\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t"+
		" \4!\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t"+
		"+\4,\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64"+
		"\t\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t"+
		"=\4>\t>\4?\t?\4@\t@\4A\tA\4B\tB\4C\tC\4D\tD\4E\tE\4F\tF\4G\tG\4H\tH\4"+
		"I\tI\4J\tJ\4K\tK\4L\tL\4M\tM\4N\tN\4O\tO\4P\tP\4Q\tQ\3\2\3\2\7\2\u00a7"+
		"\n\2\f\2\16\2\u00aa\13\2\3\2\3\2\3\3\3\3\7\3\u00b0\n\3\f\3\16\3\u00b3"+
		"\13\3\3\3\3\3\3\4\3\4\3\4\3\4\7\4\u00bb\n\4\f\4\16\4\u00be\13\4\3\4\3"+
		"\4\3\4\3\4\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3\13\3"+
		"\13\3\f\3\f\3\r\3\r\3\16\3\16\3\17\3\17\3\20\3\20\3\21\3\21\3\22\3\22"+
		"\3\23\3\23\3\24\3\24\3\25\3\25\3\26\3\26\3\27\3\27\3\30\3\30\3\31\3\31"+
		"\3\32\3\32\3\33\3\33\3\34\3\34\3\35\3\35\3\36\3\36\3\37\3\37\3 \3 \3 "+
		"\3 \3!\3!\3!\3\"\3\"\3\"\3#\3#\3#\3$\3$\3$\3%\3%\3%\3&\3&\3&\3\'\3\'\3"+
		"\'\3(\3(\3(\3(\3)\3)\6)\u011a\n)\r)\16)\u011b\3*\5*\u011f\n*\3*\6*\u0122"+
		"\n*\r*\16*\u0123\3+\3+\6+\u0128\n+\r+\16+\u0129\3,\3,\3,\3,\3,\3-\3-\3"+
		".\3.\3/\3/\3\60\3\60\3\60\3\60\3\60\3\61\3\61\3\61\3\61\3\61\3\61\3\62"+
		"\3\62\3\62\3\62\3\62\3\63\3\63\3\63\3\63\3\63\3\63\3\64\3\64\3\64\3\64"+
		"\3\64\3\65\3\65\3\65\3\65\3\65\3\65\3\66\3\66\3\66\3\66\3\66\3\67\3\67"+
		"\3\67\3\67\3\67\3\67\38\38\38\38\38\39\39\39\39\39\39\39\3:\3:\3:\3:\3"+
		";\3;\3<\3<\3=\3=\3>\3>\3?\3?\3?\3?\3@\3@\3@\3@\3A\3A\3A\3A\3A\3A\3A\3"+
		"A\3B\3B\3C\3C\3C\3C\3D\3D\3D\3D\3E\3E\3E\3E\3E\3E\3E\3E\3E\3E\3E\3F\3"+
		"F\3F\3F\3F\3F\3F\3F\3F\3G\3G\3G\3G\3G\3G\3H\5H\u01b0\nH\3H\5H\u01b3\n"+
		"H\3H\7H\u01b6\nH\fH\16H\u01b9\13H\3H\7H\u01bc\nH\fH\16H\u01bf\13H\3H\6"+
		"H\u01c2\nH\rH\16H\u01c3\3H\5H\u01c7\nH\3H\7H\u01ca\nH\fH\16H\u01cd\13"+
		"H\3H\6H\u01d0\nH\rH\16H\u01d1\7H\u01d4\nH\fH\16H\u01d7\13H\3I\6I\u01da"+
		"\nI\rI\16I\u01db\3I\3I\3J\3J\3J\3K\3K\3K\3K\3K\5K\u01e8\nK\7K\u01ea\n"+
		"K\fK\16K\u01ed\13K\3L\3L\3M\3M\3M\3M\3M\3N\6N\u01f7\nN\rN\16N\u01f8\3"+
		"N\3N\3O\3O\3P\6P\u0200\nP\rP\16P\u0201\3Q\3Q\6Q\u0206\nQ\rQ\16Q\u0207"+
		"\3\u00bc\2R\4\3\6\4\b\5\n\2\f\2\16\2\20\2\22\2\24\2\26\2\30\2\32\2\34"+
		"\2\36\2 \2\"\2$\2&\2(\2*\2,\2.\2\60\2\62\2\64\2\66\28\2:\2<\2>\6@\7B\b"+
		"D\tF\nH\13J\fL\rN\16P\17R\20T\21V\22X\23Z\24\\\25^\26`\27b\30d\31f\32"+
		"h\33j\34l\35n\36p\37r t!v\"x#z$|%~&\u0080\'\u0082(\u0084)\u0086*\u0088"+
		"+\u008a,\u008c-\u008e.\u0090/\u0092\60\u0094\61\u0096\62\u0098\63\u009a"+
		"\64\u009c\65\u009e\66\u00a0\67\u00a28\4\2\3\'\4\2\f\f\17\17\3\2\f\f\4"+
		"\2CCcc\4\2DDdd\4\2EEee\4\2FFff\4\2GGgg\4\2HHhh\4\2IIii\4\2JJjj\4\2KKk"+
		"k\4\2LLll\4\2MMmm\4\2NNnn\4\2OOoo\4\2PPpp\4\2QQqq\4\2RRrr\4\2SSss\4\2"+
		"TTtt\4\2UUuu\4\2VVvv\4\2WWww\4\2XXxx\4\2YYyy\4\2ZZzz\4\2[[{{\4\2\\\\|"+
		"|\3\2\62\63\3\2\62;\5\2\62;CHch\6\2\62;C\\aac|\4\2C\\c|\5\2\13\13\17\17"+
		"\"\"\6\2\f\f\17\17$$^^\3\2\13\13\7\2*+./\62;C\\c|\2\u0205\2\4\3\2\2\2"+
		"\2\6\3\2\2\2\2\b\3\2\2\2\2>\3\2\2\2\2@\3\2\2\2\2B\3\2\2\2\2D\3\2\2\2\2"+
		"F\3\2\2\2\2H\3\2\2\2\2J\3\2\2\2\2L\3\2\2\2\2N\3\2\2\2\2P\3\2\2\2\2R\3"+
		"\2\2\2\2T\3\2\2\2\2V\3\2\2\2\2X\3\2\2\2\2Z\3\2\2\2\2\\\3\2\2\2\2^\3\2"+
		"\2\2\2`\3\2\2\2\2b\3\2\2\2\2d\3\2\2\2\2f\3\2\2\2\2h\3\2\2\2\2j\3\2\2\2"+
		"\2l\3\2\2\2\2n\3\2\2\2\2p\3\2\2\2\2r\3\2\2\2\2t\3\2\2\2\2v\3\2\2\2\2x"+
		"\3\2\2\2\2z\3\2\2\2\2|\3\2\2\2\2~\3\2\2\2\2\u0080\3\2\2\2\2\u0082\3\2"+
		"\2\2\2\u0084\3\2\2\2\2\u0086\3\2\2\2\2\u0088\3\2\2\2\2\u008a\3\2\2\2\2"+
		"\u008c\3\2\2\2\2\u008e\3\2\2\2\2\u0090\3\2\2\2\2\u0092\3\2\2\2\2\u0094"+
		"\3\2\2\2\2\u0096\3\2\2\2\2\u0098\3\2\2\2\3\u009a\3\2\2\2\3\u009c\3\2\2"+
		"\2\3\u009e\3\2\2\2\3\u00a0\3\2\2\2\3\u00a2\3\2\2\2\4\u00a4\3\2\2\2\6\u00ad"+
		"\3\2\2\2\b\u00b6\3\2\2\2\n\u00c4\3\2\2\2\f\u00c6\3\2\2\2\16\u00c8\3\2"+
		"\2\2\20\u00ca\3\2\2\2\22\u00cc\3\2\2\2\24\u00ce\3\2\2\2\26\u00d0\3\2\2"+
		"\2\30\u00d2\3\2\2\2\32\u00d4\3\2\2\2\34\u00d6\3\2\2\2\36\u00d8\3\2\2\2"+
		" \u00da\3\2\2\2\"\u00dc\3\2\2\2$\u00de\3\2\2\2&\u00e0\3\2\2\2(\u00e2\3"+
		"\2\2\2*\u00e4\3\2\2\2,\u00e6\3\2\2\2.\u00e8\3\2\2\2\60\u00ea\3\2\2\2\62"+
		"\u00ec\3\2\2\2\64\u00ee\3\2\2\2\66\u00f0\3\2\2\28\u00f2\3\2\2\2:\u00f4"+
		"\3\2\2\2<\u00f6\3\2\2\2>\u00f8\3\2\2\2@\u00fa\3\2\2\2B\u00fe\3\2\2\2D"+
		"\u0101\3\2\2\2F\u0104\3\2\2\2H\u0107\3\2\2\2J\u010a\3\2\2\2L\u010d\3\2"+
		"\2\2N\u0110\3\2\2\2P\u0113\3\2\2\2R\u0117\3\2\2\2T\u011e\3\2\2\2V\u0125"+
		"\3\2\2\2X\u012b\3\2\2\2Z\u0130\3\2\2\2\\\u0132\3\2\2\2^\u0134\3\2\2\2"+
		"`\u0136\3\2\2\2b\u013b\3\2\2\2d\u0141\3\2\2\2f\u0146\3\2\2\2h\u014c\3"+
		"\2\2\2j\u0151\3\2\2\2l\u0157\3\2\2\2n\u015c\3\2\2\2p\u0162\3\2\2\2r\u0167"+
		"\3\2\2\2t\u016e\3\2\2\2v\u0172\3\2\2\2x\u0174\3\2\2\2z\u0176\3\2\2\2|"+
		"\u0178\3\2\2\2~\u017a\3\2\2\2\u0080\u017e\3\2\2\2\u0082\u0182\3\2\2\2"+
		"\u0084\u018a\3\2\2\2\u0086\u018c\3\2\2\2\u0088\u0190\3\2\2\2\u008a\u0194"+
		"\3\2\2\2\u008c\u019f\3\2\2\2\u008e\u01a8\3\2\2\2\u0090\u01af\3\2\2\2\u0092"+
		"\u01d9\3\2\2\2\u0094\u01df\3\2\2\2\u0096\u01e2\3\2\2\2\u0098\u01ee\3\2"+
		"\2\2\u009a\u01f0\3\2\2\2\u009c\u01f6\3\2\2\2\u009e\u01fc\3\2\2\2\u00a0"+
		"\u01ff\3\2\2\2\u00a2\u0205\3\2\2\2\u00a4\u00a8\7=\2\2\u00a5\u00a7\n\2"+
		"\2\2\u00a6\u00a5\3\2\2\2\u00a7\u00aa\3\2\2\2\u00a8\u00a6\3\2\2\2\u00a8"+
		"\u00a9\3\2\2\2\u00a9\u00ab\3\2\2\2\u00aa\u00a8\3\2\2\2\u00ab\u00ac\b\2"+
		"\2\2\u00ac\5\3\2\2\2\u00ad\u00b1\7=\2\2\u00ae\u00b0\n\3\2\2\u00af\u00ae"+
		"\3\2\2\2\u00b0\u00b3\3\2\2\2\u00b1\u00af\3\2\2\2\u00b1\u00b2\3\2\2\2\u00b2"+
		"\u00b4\3\2\2\2\u00b3\u00b1\3\2\2\2\u00b4\u00b5\b\3\2\2\u00b5\7\3\2\2\2"+
		"\u00b6\u00b7\7\61\2\2\u00b7\u00b8\7,\2\2\u00b8\u00bc\3\2\2\2\u00b9\u00bb"+
		"\13\2\2\2\u00ba\u00b9\3\2\2\2\u00bb\u00be\3\2\2\2\u00bc\u00bd\3\2\2\2"+
		"\u00bc\u00ba\3\2\2\2\u00bd\u00bf\3\2\2\2\u00be\u00bc\3\2\2\2\u00bf\u00c0"+
		"\7,\2\2\u00c0\u00c1\7\61\2\2\u00c1\u00c2\3\2\2\2\u00c2\u00c3\b\4\3\2\u00c3"+
		"\t\3\2\2\2\u00c4\u00c5\t\4\2\2\u00c5\13\3\2\2\2\u00c6\u00c7\t\5\2\2\u00c7"+
		"\r\3\2\2\2\u00c8\u00c9\t\6\2\2\u00c9\17\3\2\2\2\u00ca\u00cb\t\7\2\2\u00cb"+
		"\21\3\2\2\2\u00cc\u00cd\t\b\2\2\u00cd\23\3\2\2\2\u00ce\u00cf\t\t\2\2\u00cf"+
		"\25\3\2\2\2\u00d0\u00d1\t\n\2\2\u00d1\27\3\2\2\2\u00d2\u00d3\t\13\2\2"+
		"\u00d3\31\3\2\2\2\u00d4\u00d5\t\f\2\2\u00d5\33\3\2\2\2\u00d6\u00d7\t\r"+
		"\2\2\u00d7\35\3\2\2\2\u00d8\u00d9\t\16\2\2\u00d9\37\3\2\2\2\u00da\u00db"+
		"\t\17\2\2\u00db!\3\2\2\2\u00dc\u00dd\t\20\2\2\u00dd#\3\2\2\2\u00de\u00df"+
		"\t\21\2\2\u00df%\3\2\2\2\u00e0\u00e1\t\22\2\2\u00e1\'\3\2\2\2\u00e2\u00e3"+
		"\t\23\2\2\u00e3)\3\2\2\2\u00e4\u00e5\t\24\2\2\u00e5+\3\2\2\2\u00e6\u00e7"+
		"\t\25\2\2\u00e7-\3\2\2\2\u00e8\u00e9\t\26\2\2\u00e9/\3\2\2\2\u00ea\u00eb"+
		"\t\27\2\2\u00eb\61\3\2\2\2\u00ec\u00ed\t\30\2\2\u00ed\63\3\2\2\2\u00ee"+
		"\u00ef\t\31\2\2\u00ef\65\3\2\2\2\u00f0\u00f1\t\32\2\2\u00f1\67\3\2\2\2"+
		"\u00f2\u00f3\t\33\2\2\u00f39\3\2\2\2\u00f4\u00f5\t\34\2\2\u00f5;\3\2\2"+
		"\2\u00f6\u00f7\t\35\2\2\u00f7=\3\2\2\2\u00f8\u00f9\7,\2\2\u00f9?\3\2\2"+
		"\2\u00fa\u00fb\7C\2\2\u00fb\u00fc\7P\2\2\u00fc\u00fd\7F\2\2\u00fdA\3\2"+
		"\2\2\u00fe\u00ff\7G\2\2\u00ff\u0100\7S\2\2\u0100C\3\2\2\2\u0101\u0102"+
		"\7P\2\2\u0102\u0103\7G\2\2\u0103E\3\2\2\2\u0104\u0105\7N\2\2\u0105\u0106"+
		"\7V\2\2\u0106G\3\2\2\2\u0107\u0108\7N\2\2\u0108\u0109\7G\2\2\u0109I\3"+
		"\2\2\2\u010a\u010b\7I\2\2\u010b\u010c\7V\2\2\u010cK\3\2\2\2\u010d\u010e"+
		"\7I\2\2\u010e\u010f\7G\2\2\u010fM\3\2\2\2\u0110\u0111\7Q\2\2\u0111\u0112"+
		"\7T\2\2\u0112O\3\2\2\2\u0113\u0114\7Z\2\2\u0114\u0115\7Q\2\2\u0115\u0116"+
		"\7T\2\2\u0116Q\3\2\2\2\u0117\u0119\7\'\2\2\u0118\u011a\t\36\2\2\u0119"+
		"\u0118\3\2\2\2\u011a\u011b\3\2\2\2\u011b\u0119\3\2\2\2\u011b\u011c\3\2"+
		"\2\2\u011cS\3\2\2\2\u011d\u011f\7/\2\2\u011e\u011d\3\2\2\2\u011e\u011f"+
		"\3\2\2\2\u011f\u0121\3\2\2\2\u0120\u0122\t\37\2\2\u0121\u0120\3\2\2\2"+
		"\u0122\u0123\3\2\2\2\u0123\u0121\3\2\2\2\u0123\u0124\3\2\2\2\u0124U\3"+
		"\2\2\2\u0125\u0127\7&\2\2\u0126\u0128\t \2\2\u0127\u0126\3\2\2\2\u0128"+
		"\u0129\3\2\2\2\u0129\u0127\3\2\2\2\u0129\u012a\3\2\2\2\u012aW\3\2\2\2"+
		"\u012b\u012c\7D\2\2\u012c\u012d\7[\2\2\u012d\u012e\7V\2\2\u012e\u012f"+
		"\7G\2\2\u012fY\3\2\2\2\u0130\u0131\7<\2\2\u0131[\3\2\2\2\u0132\u0133\7"+
		".\2\2\u0133]\3\2\2\2\u0134\u0135\7\60\2\2\u0135_\3\2\2\2\u0136\u0137\7"+
		"\60\2\2\u0137\u0138\7\65\2\2\u0138\u0139\7:\2\2\u0139\u013a\78\2\2\u013a"+
		"a\3\2\2\2\u013b\u013c\7\60\2\2\u013c\u013d\7\65\2\2\u013d\u013e\7:\2\2"+
		"\u013e\u013f\78\2\2\u013f\u0140\7r\2\2\u0140c\3\2\2\2\u0141\u0142\7\60"+
		"\2\2\u0142\u0143\7\66\2\2\u0143\u0144\7:\2\2\u0144\u0145\78\2\2\u0145"+
		"e\3\2\2\2\u0146\u0147\7\60\2\2\u0147\u0148\7\66\2\2\u0148\u0149\7:\2\2"+
		"\u0149\u014a\78\2\2\u014a\u014b\7R\2\2\u014bg\3\2\2\2\u014c\u014d\7\60"+
		"\2\2\u014d\u014e\7\67\2\2\u014e\u014f\7:\2\2\u014f\u0150\78\2\2\u0150"+
		"i\3\2\2\2\u0151\u0152\7\60\2\2\u0152\u0153\7\67\2\2\u0153\u0154\7:\2\2"+
		"\u0154\u0155\78\2\2\u0155\u0156\7R\2\2\u0156k\3\2\2\2\u0157\u0158\7\60"+
		"\2\2\u0158\u0159\78\2\2\u0159\u015a\7:\2\2\u015a\u015b\78\2\2\u015bm\3"+
		"\2\2\2\u015c\u015d\7\60\2\2\u015d\u015e\78\2\2\u015e\u015f\7:\2\2\u015f"+
		"\u0160\78\2\2\u0160\u0161\7R\2\2\u0161o\3\2\2\2\u0162\u0163\7\60\2\2\u0163"+
		"\u0164\7\65\2\2\u0164\u0165\7:\2\2\u0165\u0166\79\2\2\u0166q\3\2\2\2\u0167"+
		"\u0168\5^/\2\u0168\u0169\7u\2\2\u0169\u016a\7v\2\2\u016a\u016b\7c\2\2"+
		"\u016b\u016c\7e\2\2\u016c\u016d\7m\2\2\u016ds\3\2\2\2\u016e\u016f\7G\2"+
		"\2\u016f\u0170\7S\2\2\u0170\u0171\7W\2\2\u0171u\3\2\2\2\u0172\u0173\7"+
		"*\2\2\u0173w\3\2\2\2\u0174\u0175\7+\2\2\u0175y\3\2\2\2\u0176\u0177\7-"+
		"\2\2\u0177{\3\2\2\2\u0178\u0179\7\61\2\2\u0179}\3\2\2\2\u017a\u017b\7"+
		"U\2\2\u017b\u017c\7J\2\2\u017c\u017d\7N\2\2\u017d\177\3\2\2\2\u017e\u017f"+
		"\7U\2\2\u017f\u0180\7J\2\2\u0180\u0181\7T\2\2\u0181\u0081\3\2\2\2\u0182"+
		"\u0183\5\32\r\2\u0183\u0184\5$\22\2\u0184\u0185\5\16\7\2\u0185\u0186\5"+
		" \20\2\u0186\u0187\5\62\31\2\u0187\u0188\5\20\b\2\u0188\u0189\5\22\t\2"+
		"\u0189\u0083\3\2\2\2\u018a\u018b\7/\2\2\u018b\u0085\3\2\2\2\u018c\u018d"+
		"\7O\2\2\u018d\u018e\7Q\2\2\u018e\u018f\7F\2\2\u018f\u0087\3\2\2\2\u0190"+
		"\u0191\7P\2\2\u0191\u0192\7Q\2\2\u0192\u0193\7V\2\2\u0193\u0089\3\2\2"+
		"\2\u0194\u0195\5.\27\2\u0195\u0196\5\62\31\2\u0196\u0197\5\f\6\2\u0197"+
		"\u0198\5\60\30\2\u0198\u0199\5\32\r\2\u0199\u019a\5\60\30\2\u019a\u019b"+
		"\5 \20\2\u019b\u019c\5\22\t\2\u019c\u019d\3\2\2\2\u019d\u019e\bE\4\2\u019e"+
		"\u008b\3\2\2\2\u019f\u01a0\5.\27\2\u01a0\u01a1\5\62\31\2\u01a1\u01a2\5"+
		"\f\6\2\u01a2\u01a3\5\60\30\2\u01a3\u01a4\5\60\30\2\u01a4\u01a5\5 \20\2"+
		"\u01a5\u01a6\3\2\2\2\u01a6\u01a7\bF\4\2\u01a7\u008d\3\2\2\2\u01a8\u01a9"+
		"\5\60\30\2\u01a9\u01aa\5\32\r\2\u01aa\u01ab\5\60\30\2\u01ab\u01ac\5 \20"+
		"\2\u01ac\u01ad\5\22\t\2\u01ad\u008f\3\2\2\2\u01ae\u01b0\7B\2\2\u01af\u01ae"+
		"\3\2\2\2\u01af\u01b0\3\2\2\2\u01b0\u01b2\3\2\2\2\u01b1\u01b3\5^/\2\u01b2"+
		"\u01b1\3\2\2\2\u01b2\u01b3\3\2\2\2\u01b3\u01b7\3\2\2\2\u01b4\u01b6\7a"+
		"\2\2\u01b5\u01b4\3\2\2\2\u01b6\u01b9\3\2\2\2\u01b7\u01b5\3\2\2\2\u01b7"+
		"\u01b8\3\2\2\2\u01b8\u01bd\3\2\2\2\u01b9\u01b7\3\2\2\2\u01ba\u01bc\t!"+
		"\2\2\u01bb\u01ba\3\2\2\2\u01bc\u01bf\3\2\2\2\u01bd\u01bb\3\2\2\2\u01bd"+
		"\u01be\3\2\2\2\u01be\u01c1\3\2\2\2\u01bf\u01bd\3\2\2\2\u01c0\u01c2\t\""+
		"\2\2\u01c1\u01c0\3\2\2\2\u01c2\u01c3\3\2\2\2\u01c3\u01c1\3\2\2\2\u01c3"+
		"\u01c4\3\2\2\2\u01c4\u01d5\3\2\2\2\u01c5\u01c7\5^/\2\u01c6\u01c5\3\2\2"+
		"\2\u01c6\u01c7\3\2\2\2\u01c7\u01cb\3\2\2\2\u01c8\u01ca\7a\2\2\u01c9\u01c8"+
		"\3\2\2\2\u01ca\u01cd\3\2\2\2\u01cb\u01c9\3\2\2\2\u01cb\u01cc\3\2\2\2\u01cc"+
		"\u01cf\3\2\2\2\u01cd\u01cb\3\2\2\2\u01ce\u01d0\t!\2\2\u01cf\u01ce\3\2"+
		"\2\2\u01d0\u01d1\3\2\2\2\u01d1\u01cf\3\2\2\2\u01d1\u01d2\3\2\2\2\u01d2"+
		"\u01d4\3\2\2\2\u01d3\u01c6\3\2\2\2\u01d4\u01d7\3\2\2\2\u01d5\u01d3\3\2"+
		"\2\2\u01d5\u01d6\3\2\2\2\u01d6\u0091\3\2\2\2\u01d7\u01d5\3\2\2\2\u01d8"+
		"\u01da\t#\2\2\u01d9\u01d8\3\2\2\2\u01da\u01db\3\2\2\2\u01db\u01d9\3\2"+
		"\2\2\u01db\u01dc\3\2\2\2\u01dc\u01dd\3\2\2\2\u01dd\u01de\bI\3\2\u01de"+
		"\u0093\3\2\2\2\u01df\u01e0\5\u0096K\2\u01e0\u01e1\7$\2\2\u01e1\u0095\3"+
		"\2\2\2\u01e2\u01eb\7$\2\2\u01e3\u01ea\n$\2\2\u01e4\u01e7\7^\2\2\u01e5"+
		"\u01e8\13\2\2\2\u01e6\u01e8\7\2\2\3\u01e7\u01e5\3\2\2\2\u01e7\u01e6\3"+
		"\2\2\2\u01e8\u01ea\3\2\2\2\u01e9\u01e3\3\2\2\2\u01e9\u01e4\3\2\2\2\u01ea"+
		"\u01ed\3\2\2\2\u01eb\u01e9\3\2\2\2\u01eb\u01ec\3\2\2\2\u01ec\u0097\3\2"+
		"\2\2\u01ed\u01eb\3\2\2\2\u01ee\u01ef\t\3\2\2\u01ef\u0099\3\2\2\2\u01f0"+
		"\u01f1\t\3\2\2\u01f1\u01f2\3\2\2\2\u01f2\u01f3\bM\5\2\u01f3\u01f4\bM\3"+
		"\2\u01f4\u009b\3\2\2\2\u01f5\u01f7\t\2\2\2\u01f6\u01f5\3\2\2\2\u01f7\u01f8"+
		"\3\2\2\2\u01f8\u01f6\3\2\2\2\u01f8\u01f9\3\2\2\2\u01f9\u01fa\3\2\2\2\u01fa"+
		"\u01fb\bN\5\2\u01fb\u009d\3\2\2\2\u01fc\u01fd\7\"\2\2\u01fd\u009f\3\2"+
		"\2\2\u01fe\u0200\t%\2\2\u01ff\u01fe\3\2\2\2\u0200\u0201\3\2\2\2\u0201"+
		"\u01ff\3\2\2\2\u0201\u0202\3\2\2\2\u0202\u00a1\3\2\2\2\u0203\u0206\5^"+
		"/\2\u0204\u0206\t&\2\2\u0205\u0203\3\2\2\2\u0205\u0204\3\2\2\2\u0206\u0207"+
		"\3\2\2\2\u0207\u0205\3\2\2\2\u0207\u0208\3\2\2\2\u0208\u00a3\3\2\2\2\34"+
		"\2\3\u00a8\u00b1\u00bc\u011b\u011e\u0123\u0129\u01af\u01b2\u01b7\u01bd"+
		"\u01c3\u01c6\u01cb\u01d1\u01d5\u01db\u01e7\u01e9\u01eb\u01f8\u0201\u0205"+
		"\u0207\6\2\3\2\b\2\2\7\3\2\4\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}